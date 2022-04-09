module Main where


import Test.Tasty (defaultMain, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)
import Parser (deserialize)


main = defaultMain tests

tests =
  testGroup
    "Byte Array Parsing"
    [doesDeserialize]


doesDeserialize =
  testCase "Matches basic string" $
    assertEqual [] "deez nuts" (deserialize)
