'use strict';

describe('Thermostat', function(){
  var thermostat

  beforeEach(function(){
    thermostat = new Thermostat();
  });

  it('starts at 20 degrees', function(){
    expect(thermostat.temperature()).toEqual(20);
  });

  it('raises temperature when up button is clicked', function(){
    thermostat.up();
    expect(thermostat.temperature()).toEqual(21);
  });

  it('decreases temperature when down button is clicked', function(){
    thermostat.down();
    expect(thermostat.temperature()).toEqual(19);
  });

});
