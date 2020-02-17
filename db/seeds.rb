[
  {
    fname: 'Erik',
    lname: 'Aylward',
    myzone_guid: '95d34538-e49d-11e9-943f-ac1f6b49537a'
  },
  {
    fname: 'Joe',
    lname: 'Barrasse',
    myzone_guid: 'f2fde533-e566-11e9-943f-ac1f6b49537a'
  },
  {
    fname: 'Dave',
    lname: 'Breindel',
    myzone_guid: '2ee7ece4-e2f1-11e9-943f-ac1f6b49537a'
  },
  {
    fname: 'Dan',
    lname: 'Grodziak',
    myzone_guid: '4141e272-e4b1-11e9-943f-ac1f6b49537a'
  },
  {
    fname: 'Matt',
    lname: 'Miorelli',
    myzone_guid: '9bab99c7-ec79-11e9-943f-ac1f6b49537a'
  },
  {
    fname: 'Ryan',
    lname: 'Murray',
    myzone_guid: '6786af75-e2d8-11e9-943f-ac1f6b49537a'
  },
  {
    fname: 'James',
    lname: 'Pensabene',
    myzone_guid: '923a525c-ed09-11e9-943f-ac1f6b49537a'
  },
  {
    fname: 'Danny',
    lname: 'Smith',
    myzone_guid: 'ca28eb9b-e331-11e9-943f-ac1f6b49537a'
  },
].each { |attrs| Athlete.where(attrs).first_or_create }