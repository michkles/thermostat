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

  it('cannot go lower than 10 degrees', function(){
    for(var i = 0; i < 10; i++){
      thermostat.down();
    };
    expect(function(){ thermostat.down(); }).toThrowError('Minimum temperature is 10 degrees');
  });

  it('has max temp 25 if power saving mode on', function(){
    thermostat.savingPowerOn();
    expect(thermostat.maxTemp()).toEqual(25);
  });

  it('has max temp 32 if power saving mode off', function(){
    thermostat.savingPowerOff();
    expect(thermostat.maxTemp()).toEqual(32);
  });

  it('defaults to power saving mode on', function(){
    expect(thermostat.maxTemp()).toEqual(25);
  });

  it('resets temperature to 20', function(){
    thermostat.reset();
    expect(thermostat.temperature()).toEqual(20);
  });

});
