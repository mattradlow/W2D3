require 'rspec'
require 'first_TDD'
# require 'spec_helper'


describe '#uniq' do 
    
    it 'returns unique elements in an array' do 
        arr = [1,2,3,2,3,2,3,1]
        expect(my_uniq(arr)).to eq(arr.uniq)
    end 

    it 'does NOT call the built in Array#uniq method' do
        arr = ["New_Array"]
        expect(arr).not_to receive(:uniq)
        my_uniq(arr)
    end
end 

describe '#two_sum' do

    it 'finds all positions where elements sum to zero' do
        arr = [-1, 0, 2, -2, 1]
        expect(two_sum(arr)).to eq([[0, 4], [2, 3]])
    end

    it "returns nil if the resulting array is empty" do
        arr = [1,2,3,4]
        expect(two_sum(arr)).to be_nil
    end

end

describe '#my_transpose' do
    
    let(:arr) { [[0, 3, 6], [1, 4, 7], [2, 5, 8]] }

    it 'will transpose rows to columns and vice versa' do
        expect(my_transpose(arr)).to eq (arr.transpose)
    end

    it 'will define my_transpose' do
        expect { my_transpose(arr) }.not_to raise_error
    end
    
    it "will NOT use ruby's 'my_transpose' method" do 
        expect(arr).not_to receive(:transpose) 
        my_transpose(arr)
    end 

end

describe '#stock_picker' do

    let(:arr) {[[100], [80], [120], [400], [150], [70], [200], [250], [300]]}

    it 'will define stock_picker' do
        expect { stock_picker(arr) }.not_to raise_error
    end

    it 'will output the most profitable day to buy and sell stock' do
        expect(stock_picker(arr).to eq ([1, 3]))
    end
    
end



