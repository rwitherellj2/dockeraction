/// Description
Class UnitTest.Test Extends %UnitTest.TestCase
{

Method TestHello() As %Status
{
    Do $$$AssertTrue(1,"First test success")
    Quit $$$OK
}

}
