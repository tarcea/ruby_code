require_relative '../transcode.rb'

describe 'transcode' do
    it "should return an UTF-8 encoded string" do
      string = "my string".encode(Encoding::ISO_8859_1)
      astring = "my string".encode(Encoding::UTF_8)
      expect(transcode(string)).to eq astring
    end
end


