/// Description
Class UnitTest.Test Extends %UnitTest.TestCase
{

Method TestHello() As %Status
{
    Do $$$AssertTrue(1,"First test success")
    Do $$$AssertNotTrue(1,"First test failure")
    Quit $$$OK
}

}
