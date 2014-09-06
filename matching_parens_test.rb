require 'test/unit'
require_relative 'matching_parens'

class ParensTest < Test::Unit::TestCase
  
  def test_parens_closer
    string = "(this is(a (test), for interview) cake)"
    opening_parens_index = 8
    closing_parens_index = 32
    assert_equal closing_parens_index, parens_closer(opening_parens_index, string)

    string = "Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing."
    opening_parens_index = 10
    closing_parens_index = 79
    assert_equal closing_parens_index, parens_closer(opening_parens_index, string)
  end
end
