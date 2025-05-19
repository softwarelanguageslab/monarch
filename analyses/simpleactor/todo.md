
Features:
- [X] Move store to be branch sensitive as well, but not part of the cached component (so that widening can occur). This means that NonDetT has to be moved as well, but this can be tricky as widening semantics have to be manually
specified in that case
- [X] Use the above to put the RefCountMailboxT on the same location, the widening strategy here is to write the mailboxes to the global mailboxes after a component has been analyzed, all branches are joined within this global store.
  => problem: the new mailbox must be strongly updated in some cases, how do we do this in the global mailbox?
- [ ] solve constraint issues
- [ ] put indexed mailbox monad at the bottom
- [ ] register effects properly for putMailboxes and joinMailboxes

Bugs:
- [X] receive in the `GraphToSet` abstraction seems to fail (cf. receive_countinf.scm example which should have output for the test-beh actor). Fixed ==> issue with the implementation of `MonadSend` which supposed to disable triggers
when the mailbox no longer changes (i.e., by returning `False` after `send`), the problem was that if the `hasMessage` returned true, the message was not enqueued, which is a problem in mailboxes that do track multiplicity, changed check
to equality between two mailboxes. (cf. 3979eec4d00155561ad3f243dc8f8853a248c6db)
