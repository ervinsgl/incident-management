@protocol: 'rest'
service NorthwindService {
    @open
    type object {};

    function GetPerson(PersonID : String) returns object;
}