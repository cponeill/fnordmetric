require ::File.expand_path('../spec_helper.rb', __FILE__)

describe "base" do


	it "should create a new data point" do
		old_count = MyMetric.datapoints.count
		MyMetric.create_datapoint(:foo => 1, :bar => 5)
		MyMetric.datapoints.count.should == old_count + 1
	end

end