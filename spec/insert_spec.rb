require 'simplecov'
SimpleCov.start

require "rspec"
require 'insertsort'

RSpec.describe 'insertsort.rb' do
  describe '#insertsort' do

    it 'should be defined' do
      expect { insertsort([1, 3, 4]) }.not_to raise_error
    end

  it 'handles an empty array' do
    array = []
    expect(insertsort(array)).to eq([nil])
  end

  it 'the largest integer on array' do
    array = [1, 33, 5, 6, 2]
    expect(insertsort(array)).to end_with(33)
  end

  it 'the smallest integer on array' do
    array = [1, 33, 5, 6, 2]
    expect(insertsort(array)).to start_with(1)
  end

  it 'should test positive integer' do
    array = [1, 33, 5, 6, 2]
    expect(insertsort(array)).to eq([1, 2, 5, 6, 33])
  end

  it 'should test negative integer' do
    array = [-1, -33, -5, -6, -2]
    expect(insertsort(array)).to eq([-33, -6, -5, -2, -1])
  end

  it 'should test negative with positive integer' do
    array = [5, -9, 2, 1, -10]
    expect(insertsort(array)).to eq([-10, -9, 1, 2, 5])
  end

  it 'should test positive decimals' do
    array = [1.0, 3.4, 5.4, 7.1, 2.9]
    expect(insertsort(array)).to eq([1.0, 2.9, 3.4, 5.4, 7.1])
  end

  it 'should test negative decimals' do
    array = [-1.0, -3.4, -5.4, -7.1, -2.9]
    expect(insertsort(array)).to eq([-7.1, -5.4, -3.4, -2.9, -1.0])
  end

  it 'should test negative with positive decimal' do
    array = [-7.6, -7.4, 1.3, 1.7, -6.8]
    expect(insertsort(array)).to eq([-7.6, -7.4, -6.8, 1.3, 1.7])
  end

  it "should handle single element arrays" do
    expect(insertsort([2])).to eq([2])
  end

    it "should not alter an already sorted array" do
      array = [1, 2, 3, 4, 5, 6]
      expect(insertsort(array)).to eq([1, 2, 3, 4, 5, 6])
  end


  end
end


