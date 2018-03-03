require 'test_helper'

class PatioTest < ActiveSupport::TestCase
  test "the model built by factory should be valid" do
    patio = build(:patio)
    assert patio.valid?
  end

  test "the model built by factory should have an unidade" do
    patio = build(:patio)
    assert patio.unidade.present?
  end

  test "patio without a nome should be invalid" do
    patio = build(:patio, nome: nil)
    refute patio.valid?
    assert patio.invalid?
  end
end
