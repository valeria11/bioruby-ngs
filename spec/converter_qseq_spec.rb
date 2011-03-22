#
#  converter_qseq_spec.rb - RSpec Test
#
# Copyright:: Copyright (C) 2011
#     Raoul Bonnal <r@bioruby.org>
# License:: The Ruby License
#
#


require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Converter" do 
  describe "Qseq" do
    it "convert two qseq lines into fastq" do
      qseq = Bio::Ngs::Converter::Qseq.new
      qseq.buffer = "H125    98      1       1108    1586    1989    CGATGT  1       CAGA.C.................A.....GAATGGCATGGATCAAGAAAATCCCCCTTGTGAAGAAGAATCAGCAG    BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB    0\nH125    98      1       1108    1188    2036    CGATGT  1       CTTGTATGCAGCATCCCCTTCTTGCCTAGGGACTTGAAGGGCCAGGCTTCCTGTCATTGCCTCACTCAAATGTAGC    gggggggggggggegggggffggeggegggeagge^ggdbcgggcdgedegfggffff^ffffefdeeZefccceg    1"
 # qseq.qseq2fastq_pe(qseq.buffer).should == nil
      fastqs = []
      qseq.to_fastq(:pe) do |fastq|
        fastqs << fastq if fastq
      end
      fastqs.first.should == "@H125:1:1108:1188:2036#0/1\nCTTGTATGCAGCATCCCCTTCTTGCCTAGGGACTTGAAGGGCCAGGCTTCCTGTCATTGCCTCACTCAAATGTAGC\n+\ngggggggggggggegggggffggeggegggeagge^ggdbcgggcdgedegfggffff^ffffefdeeZefccceg"
    end
       it "convert a qseq File into fastq for parierd ends" do
         qseq = Bio::Ngs::Converter::Qseq.new
         qseq.buffer = File.open("/Users/bonnalraoul/Desktop/s_1_1_1108_qseq.txt",'r')
         fastq_file = File.open("/Users/bonnalraoul/Desktop/s_1_1_1108_qseq.fastq", 'w')
         fastqs = []
         qseq.to_fastq(:pe) do |fastq|
          fastqs << fastq
          fastq_file.puts fastq
         end
         fastq_file.close
         fastqs.compact!.last.should == "@H125:1:1108:20810:200947#0/1\nCTTTTTTTTTTTTTTGTTTTGTTTTGTTTTGTTGATTGTTTGGTTTTTGTGGTTGTGTGTTGTTGTTTTTTTGTTG\n+\ndddWd]_W_BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB"
       end    
  end
end
