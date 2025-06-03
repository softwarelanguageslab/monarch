
Features:
- [X] Move store to be branch sensitive as well, but not part of the cached component (so that widening can occur). This means that NonDetT has to be moved as well, but this can be tricky as widening semantics have to be manually
specified in that case
- [X] Use the above to put the RefCountMailboxT on the same location, the widening strategy here is to write the mailboxes to the global mailboxes after a component has been analyzed, all branches are joined within this global store.
  => problem: the new mailbox must be strongly updated in some cases, how do we do this in the global mailbox?
- [X] solve constraint issues
- [X] put indexed mailbox monad at the bottom
- [X] register effects properly for putMailboxes and joinMailboxes

Precision:

- [X] add current state of the mailbox to the allocation context, figure out how to avoid cycles? ==> not a problem if we make sure that in practice these context never expand forever, but in theory it is possible to have infinitely many nested context (since mailboxes capture values and values capture contexts through their pointers), cf. 1351a50cd988df58b21a73192492657b046e1a95

Soundness:

- [X] only the mailbox of the last branch is put in the global mailbox data becaue of the last restore call. Should use a local writer monad and only after all branches have been evaluated join.

Bugs:
- [X] receive in the `GraphToSet` abstraction seems to fail (cf. receive_countinf.scm example which should have output for the test-beh actor). Fixed ==> issue with the implementation of `MonadSend` which supposed to disable triggers
when the mailbox no longer changes (i.e., by returning `False` after `send`), the problem was that if the `hasMessage` returned true, the message was not enqueued, which is a problem in mailboxes that do track multiplicity, changed check
to equality between two mailboxes. (cf. 3979eec4d00155561ad3f243dc8f8853a248c6db)

Concrete interpreter/instrumentation:

- [ ] Mailbox contents: print mailbox contents per pid upon send and receive
- [ ] Print function applications and store contents (perhaps via shadow stack?)
