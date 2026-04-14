module Analysis.PureActor.Mailbox.Partitioned.Partitions(
    -- TODO: this module should not export specific instances of partitions, however, historically 
    -- the 'SenderPartition' was part of this module, so it is re-exported for convenience.
    module Analysis.PureActor.Mailbox.Partitioned.Partitions.SenderPartition 
    ) where

import Analysis.PureActor.Mailbox.Partitioned.Partitions.SenderPartition 
