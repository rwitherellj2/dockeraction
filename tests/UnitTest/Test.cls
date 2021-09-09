/// Description
Class UnitTest.Test Extends %UnitTest.TestCase
{

ClassMethod Run()
{
  do ##class(%UnitTest.Manager).DebugRunTestCase(..%ClassName(1))
}

Method TestHello() As %Status
{
    Do $$$AssertTrue(1,"First test success")
    Do $$$AssertNotTrue(1,"First test failure")
    Quit $$$OK
}

}
