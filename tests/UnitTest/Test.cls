/// Description
Class UnitTest.Test Extends %UnitTest.TestCase
{

/// Description
ClassMethod Run()
{
  do ##class(%UnitTest.Manager).DebugRunTestCase(..%ClassName(1))
}

/// Description
Method TestHello() As %Status
{
    Do $$$AssertTrue(1,"First test success")
    Do $$$AssertNotTrue(1,"First test failure")
    Return $$$OK
}

}
