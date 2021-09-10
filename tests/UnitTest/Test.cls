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
    Do $$$AssertTrue(1,"Hello test success")
    Return $$$OK
}

/// Description
Method TestSystem() As %Status
{
    Do $$$AssertTrue(1,"System test success")
    Return $$$OK
}

}
