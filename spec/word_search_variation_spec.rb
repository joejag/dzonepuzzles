require 'word_search_variation'

describe WordSearchVariation do

    let(:sample) { 
        [['e','s','a','s','j' ],
         ['w','n','v','o','9' ],
         ['r','s','o','i','a' ],
         ['y','s','s','z','a' ],
         ['e','s','r','a','d' ]]
    }
    let(:subject) { WordSearchVariation.new }

    context "solving it" do
        it "should do stuff" do
            pending
            subject.find(sample, 'dzone').should eql [4,4]
        end
    end

    context "finding words in a direction" do
        it "should be able to look horizontally" do
            points = subject.horizontal_points(sample, 'four', 0, 0)
            points.should eql [[0, 0], [1, 0], [2, 0], [3, 0]]
        end
        it "should be able to look horizontally backwards" do
            points = subject.horizontal_backwards_points(sample, 'four', 4, 0)
            points.should eql [[4, 0], [3, 0], [2, 0], [1, 0]]
        end
        it "should be able to look vertically" do
            points = subject.vertical_points(sample, 'four', 0, 0)
            points.should eql [[0, 0], [0, 1], [0, 2], [0, 3]]
        end
        it "should be able to look vertically upwards " do
            points = subject.vertical_upwards_points(sample, 'four', 0, 4)
            points.should eql [[0, 4], [0, 3], [0, 2], [0, 1]]
        end
    end

end
