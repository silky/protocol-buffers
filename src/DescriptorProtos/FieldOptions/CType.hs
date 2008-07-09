module DescriptorProtos.FieldOptions.CType
  (CType(..))
 where

import ProtocolBuffers.Header

data CType = CORD | STRING_PIECE
  deriving (Show,Eq,Ord,Typeable)

instance OptionFlag a => Monoid (Option a CType) where
  mempty = Absent
  mappend = op'Last
