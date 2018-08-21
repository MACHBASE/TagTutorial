drop table energydata;
CREATE TABLE ENERGYDATA
(
    DATE DATETIME ,
    APPLIANCES DOUBLE ,
    LIGHTS DOUBLE ,
    T1 DOUBLE ,
    RH_1 DOUBLE ,
    T2 DOUBLE ,
    RH_2 DOUBLE ,
    T3 DOUBLE ,
    RH_3 DOUBLE ,
    T4 DOUBLE ,
    RH_4 DOUBLE ,
    T5 DOUBLE ,
    RH_5 DOUBLE ,
    T6 DOUBLE ,
    RH_6 DOUBLE ,
    T7 DOUBLE ,
    RH_7 DOUBLE ,
    T8 DOUBLE ,
    RH_8 DOUBLE ,
    T9 DOUBLE ,
    RH_9 DOUBLE ,
    T_OUT DOUBLE ,
    PRESS_MM_HG DOUBLE ,
    RH_OUT DOUBLE ,
    WINDSPEED DOUBLE ,
    VISIBILITY DOUBLE ,
    TDEWPOINT DOUBLE ,
    RV1 DOUBLE ,
    RV2 DOUBLE );

-- Appliances :  energy use in Wh
-- lights     :  energy use of light fixtures in the house in Wh
-- T1         :  Temperature in kitchen area, in Celsius
-- RH_1       :  Humidity in kitchen area, in %
-- T2         :  Temperature in living room area, in Celsius
-- RH_2       :  Humidity in living room area, in %
-- T3         :  Temperature in laundry room area
-- RH_3       :  Humidity in laundry room area, in %
-- T4         :  Temperature in office room, in Celsius
-- RH_4       :  Humidity in office room, in %
-- T5         :  Temperature in bathroom, in Celsius
-- RH_5       :  Humidity in bathroom, in %
-- T6         :  Temperature outside the building (north side), in Celsius
-- RH_6       :  Humidity outside the building (north side), in %
-- T7         :  Temperature in ironing room , in Celsius
-- RH_7       :  Humidity in ironing room, in %
-- T8         :  Temperature in teenager room 2, in Celsius
-- RH_8       :  Humidity in teenager room 2, in %
-- T9         :  Temperature in parents room, in Celsius
-- RH_9       :  Humidity in parents room, in %
-- To         :  Temperature outside (from Chievres weather station), in Celsius
-- RH_out     :  Humidity outside (from Chievres weather station), in %

-- Pressure   : (from Chievres weather station) in mm Hg
-- Wind speed : (from Chievres weather station) in m/s
-- Visibility : (from Chievres weather station) in km
-- Tdewpoint  : (from Chievres weather station) Â°C
-- rv1        :  Random variable 1, nondimensional
-- rv2        :  Random variable 2, nondimensional
