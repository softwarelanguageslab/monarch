import click
import re

"""
Generate a list of Haskell BIFs (Built-in Functions) from Erlang's `bif.tab` file.
"""


IDENT_REGEX = r'[a-zA-Z_]|[0-9]|[!$%&*+.<=>?@^`|~`]'
IDENT_REGEX_INIT = r'[a-zA-Z_]|[!$%&*+.<=>?@^`|~`]'

class Lexer: 
    def __init__(self, input):
        """
        Initialize the Lexer.
        """

        self.position = 0
        self.input = input
        self.lexeme = ""

    def __scan_while(self, predicate):
        """
        Scan until a predicate is met and put the scanned contents into the lexeme.
        
        Arguments:
        predicate -- a function that takes a character and returns True if the character should be scanned
        """
        while self.position < len(self.input) and predicate(self.input[self.position]):
            self.lexeme += self.input[self.position]
            self.position += 1

        lexeme = self.lexeme
        self.lexeme = ""
        return lexeme
        
    def scan(self):
        """
        Scan tokens from the given line of the bif.tab file, emits one token at the time 

        Arguments:
        line -- a line from the bif.tab file
        """

        while True:
            if self.position >= len(self.input):
                break
            # Skip whitespaces
            elif self.input[self.position].isspace():
                self.position += 1
                continue
            # Lex anything inside quotes as a string
            elif self.input[self.position] == '\'':
                self.position += 1
                lexeme = self.__scan_while(lambda c: c != '\'')
                if self.position < len(self.input):
                    self.position += 1
                yield lexeme
            # Skip seperators for modules and arities
            elif self.input[self.position] == '/':
                self.position += 1 
                continue
            elif self.input[self.position] == ':':
                self.position += 1
                continue
            # Lex identifiers
            elif re.match(IDENT_REGEX_INIT, self.input[self.position]):
                yield self.__scan_while(lambda c: re.match(IDENT_REGEX, c))
            # Lex numbers
            elif self.input[self.position:self.position + 1].isdigit():
                yield self.__scan_while(lambda c: c.isdigit())

def parse_bif_line(line):
    """
    Parse a line from the bif.tab file and return a tuple of (name, arity).
    
    Arguments:
    line -- a line from the bif.tab file
    """
    lexer = Lexer(line)
    tokens = list(lexer.scan())

    if not tokens:
        return None
    if len(tokens) < 4 or (tokens[0] not in set(['bif', 'ubif', 'hbif'])):
        raise ValueError("Invalid bif line format at line: {}".format(line))
    
    module = tokens[1]
    name = tokens[2]
    arity = tokens[3]
    return module, name, arity

@click.command()
@click.argument('bif_file', type=click.Path(exists=True, dir_okay=False))
def generate_bifs(bif_file):
    """
    Generate a list of Haskell BIFs from the given bif_file.
    
    bif_file: Path to the bif.tab file.
    """
    with open(bif_file, 'r') as f:
        lines = filter(lambda l: not l.startswith("#"), f.readlines())

    bifs = []
    for line in lines:
        bifs.append(parse_bif_line(line.strip()))
        
    bifs = [bif for bif in bifs if bif is not None]

    # Output an Erlang list of BIFs formatted as `BIF Module Name Arity`
    bifs_haskell = [ f"BIF \"{module}\" \"{name}\" {arity}" for module, name, arity in bifs ]
    bifs_haskell = ",\n".join(bifs_haskell)
    print(f"[\n{bifs_haskell}\n]")    

if __name__ == '__main__':
    generate_bifs()
