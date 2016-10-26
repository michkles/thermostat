'use strict';

function Thermostat(){
  this.MINIMUM_TEMP = 10;
  this.temperature = 20;
  this.MAX_LIMIT_PSM_ON = 25;
  this.MAX_LIMIT_PSM_OFF = 32;
  this._isPowerSavingMode=true;
};

Thermostat.prototype.temperature = function(){
  return this.temperature;
};

Thermostat.prototype.isMaximumTemperature = function(){
  if (this._isPowerSavingMode) {
    return this.MAX_LIMIT_PSM_ON;
  }
  return this.MAX_LIMIT_PSM_OFF;
};

Thermostat.prototype.up = function(){
  if (this.temperature === this.isMaximumTemperature()) {
    throw new Error('Maximum temperature reached');
  }
  this.temperature += 1;
};

Thermostat.prototype.down = function(){
  if (this.temperature <= this.MINIMUM_TEMP) {
    throw new Error('Minimum temperature is 10 degrees')
  }
  this.temperature -= 1;
};

Thermostat.prototype.savingPowerOn = function(){
  this._isPowerSavingMode=true;
};

Thermostat.prototype.savingPowerOff = function(){
  this._isPowerSavingMode=false;
};
