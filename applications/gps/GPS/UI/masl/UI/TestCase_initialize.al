state UI::TestCase.initialize ( iterations: in integer ) is
begin
  LOG::LogInfo("Start of test case"); 
  this.iterations := iterations * 2;
  generate TestCase.initializationComplete() to this;
end state;
