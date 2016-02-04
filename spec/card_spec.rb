require 'spec_helper'

describe "Mondo::Card" do
	before { @card = Mondo::Card.new({}) }

	describe "#active?" do
		subject { @card.active? }

		context "when active" do
			before { @card.status = "ACTIVE" }

			it { is_expected.to eq true }
		end

		context "when frozen" do
			before { @card.status = "INACTIVE" }

			it { is_expected.to eq false }
		end
	end
end
