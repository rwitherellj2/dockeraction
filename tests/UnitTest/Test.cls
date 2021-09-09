/// Description
Class UnitTest.Test Extends %UnitTest.TestCase
{

/// Description
ClassMethod Run()
{
  do ##class(%UnitTest.Manager).DebugRunTestCase(..%ClassName(1))
}

Method TestHello()
{
    Do $$$AssertTrue(1,"First test success")
    Return $$$OK
}

}
