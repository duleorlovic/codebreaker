require 'spec_helper'

module Codebreaker
  describe Game do
    let(:game) { Game.new(@output)}
      before(:each) do
      @output = double('output').as_null_object
      end
    describe "#start" do
      it "send a welcome message" do
        @output.should_receive(:puts).with('Welcome to Codebreaker')
        game.start
      end

      it "prompts for the first guess" do
        @output.should_receive(:puts).with('Enter guess:')

        game.start
      end

    end
  end
end
