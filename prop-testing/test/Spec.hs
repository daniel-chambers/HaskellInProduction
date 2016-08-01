import Data.List
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

-- splitOnSpaces :: String -> [String]
-- splitOnSpaces "" = []
-- splitOnSpaces xs =
--   word : (splitOnSpaces . drop 1 $ rest)
--   where
--     (word, rest) = break onASpace xs
--     onASpace c = c == ' '


splitOnSpaces :: String -> [String]
splitOnSpaces str =
  word : remainder
  where
    (word, rest) = break onASpace str
    onASpace c = c == ' '
    remainder = case rest of
      ""     -> []
      _ : xs -> splitOnSpaces xs


main :: IO ()
main = hspec $
  describe "splitOnSpaces" $ do
    it "returns a list that is the same length as the number of spaces plus one" $
      property $ \str ->
        let numSpaces = length . filter (== ' ') $ str
        in length (splitOnSpaces str) `shouldBe` numSpaces + 1
    it "returns a list that when joined back together results in the input string" $
      property $ \str ->
        let split = splitOnSpaces str
        in unwords split `shouldBe` str
