pragma solidity 0.5.12;

contract HelloWorld{

    struct Person {
      uint id;
      string name;
      uint age;
      uint height;
      address walletAddress;
    }

    Person[] public people;

    function createPerson(string memory name, uint age, uint height) public {
        // This creates a person
        Person memory newPerson;

        newPerson.id = people.length;
        newPerson.name = name;
        newPerson.age = age;
        newPerson.height = height;

        people.push(newPerson);

        // Single line syntax
        // people.push(Person(people.length, name, age, height));
    }
}
