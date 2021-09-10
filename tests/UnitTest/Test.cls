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
    Do $$$AssertTrue(1,"Hello test success")
    Return $$$OK
}

Method TestSystem()
{
    Do $$$AssertTrue(1,"System test success")
    Return $$$OK
}

}
