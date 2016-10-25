'use strict';

function Thermostat(){
  this._temperature = 20
  this._maxTemp = 25
  this._isPowerSavingMode=true
};

Thermostat.prototype.temperature = function(){
  return this._temperature
};

Thermostat.prototype.maxTemp = function(){
  this._isPowerSavingMode ? this._maxTemp = 25 : this._maxTemp = 32;
  return this._maxTemp
};

Thermostat.prototype.up = function(){
  this._temperature += 1
};

Thermostat.prototype.down = function(){
  if (this._temperature <= 10) {
    throw new Error('Minimum temperature is 10 degrees')
  }
  this._temperature -= 1;
};

Thermostat.prototype.savingPowerOn = function(){
  this._isPowerSavingMode=true
};

Thermostat.prototype.savingPowerOff = function(){
  this._isPowerSavingMode=false
};
