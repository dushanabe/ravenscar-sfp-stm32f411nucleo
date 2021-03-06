--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from STM32F411xx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.RTC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- TR_Register --
   -----------------

   subtype TR_SU_Field is Interfaces.Bit_Types.UInt4;
   subtype TR_ST_Field is Interfaces.Bit_Types.UInt3;
   subtype TR_MNU_Field is Interfaces.Bit_Types.UInt4;
   subtype TR_MNT_Field is Interfaces.Bit_Types.UInt3;
   subtype TR_HU_Field is Interfaces.Bit_Types.UInt4;
   subtype TR_HT_Field is Interfaces.Bit_Types.UInt2;
   subtype TR_PM_Field is Interfaces.Bit_Types.Bit;

   --  time register
   type TR_Register is record
      --  Second units in BCD format
      SU             : TR_SU_Field := 16#0#;
      --  Second tens in BCD format
      ST             : TR_ST_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Minute units in BCD format
      MNU            : TR_MNU_Field := 16#0#;
      --  Minute tens in BCD format
      MNT            : TR_MNT_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Hour units in BCD format
      HU             : TR_HU_Field := 16#0#;
      --  Hour tens in BCD format
      HT             : TR_HT_Field := 16#0#;
      --  AM/PM notation
      PM             : TR_PM_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TR_Register use record
      SU             at 0 range 0 .. 3;
      ST             at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MNU            at 0 range 8 .. 11;
      MNT            at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HU             at 0 range 16 .. 19;
      HT             at 0 range 20 .. 21;
      PM             at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   -----------------
   -- DR_Register --
   -----------------

   subtype DR_DU_Field is Interfaces.Bit_Types.UInt4;
   subtype DR_DT_Field is Interfaces.Bit_Types.UInt2;
   subtype DR_MU_Field is Interfaces.Bit_Types.UInt4;
   subtype DR_MT_Field is Interfaces.Bit_Types.Bit;
   subtype DR_WDU_Field is Interfaces.Bit_Types.UInt3;
   subtype DR_YU_Field is Interfaces.Bit_Types.UInt4;
   subtype DR_YT_Field is Interfaces.Bit_Types.UInt4;

   --  date register
   type DR_Register is record
      --  Date units in BCD format
      DU             : DR_DU_Field := 16#1#;
      --  Date tens in BCD format
      DT             : DR_DT_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Month units in BCD format
      MU             : DR_MU_Field := 16#1#;
      --  Month tens in BCD format
      MT             : DR_MT_Field := 16#0#;
      --  Week day units
      WDU            : DR_WDU_Field := 16#1#;
      --  Year units in BCD format
      YU             : DR_YU_Field := 16#0#;
      --  Year tens in BCD format
      YT             : DR_YT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register use record
      DU             at 0 range 0 .. 3;
      DT             at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MU             at 0 range 8 .. 11;
      MT             at 0 range 12 .. 12;
      WDU            at 0 range 13 .. 15;
      YU             at 0 range 16 .. 19;
      YT             at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- CR_Register --
   -----------------

   subtype CR_WCKSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype CR_TSEDGE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_REFCKON_Field is Interfaces.Bit_Types.Bit;
   subtype CR_BYPSHAD_Field is Interfaces.Bit_Types.Bit;
   subtype CR_FMT_Field is Interfaces.Bit_Types.Bit;
   subtype CR_DCE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_ALRAE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_ALRBE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_WUTE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_TSE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_ALRAIE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_ALRBIE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_WUTIE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_TSIE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_ADD1H_Field is Interfaces.Bit_Types.Bit;
   subtype CR_SUB1H_Field is Interfaces.Bit_Types.Bit;
   subtype CR_BKP_Field is Interfaces.Bit_Types.Bit;
   subtype CR_COSEL_Field is Interfaces.Bit_Types.Bit;
   subtype CR_POL_Field is Interfaces.Bit_Types.Bit;
   subtype CR_OSEL_Field is Interfaces.Bit_Types.UInt2;
   subtype CR_COE_Field is Interfaces.Bit_Types.Bit;

   --  control register
   type CR_Register is record
      --  Wakeup clock selection
      WCKSEL         : CR_WCKSEL_Field := 16#0#;
      --  Time-stamp event active edge
      TSEDGE         : CR_TSEDGE_Field := 16#0#;
      --  Reference clock detection enable (50 or 60 Hz)
      REFCKON        : CR_REFCKON_Field := 16#0#;
      --  Bypass the shadow registers
      BYPSHAD        : CR_BYPSHAD_Field := 16#0#;
      --  Hour format
      FMT            : CR_FMT_Field := 16#0#;
      --  Coarse digital calibration enable
      DCE            : CR_DCE_Field := 16#0#;
      --  Alarm A enable
      ALRAE          : CR_ALRAE_Field := 16#0#;
      --  Alarm B enable
      ALRBE          : CR_ALRBE_Field := 16#0#;
      --  Wakeup timer enable
      WUTE           : CR_WUTE_Field := 16#0#;
      --  Time stamp enable
      TSE            : CR_TSE_Field := 16#0#;
      --  Alarm A interrupt enable
      ALRAIE         : CR_ALRAIE_Field := 16#0#;
      --  Alarm B interrupt enable
      ALRBIE         : CR_ALRBIE_Field := 16#0#;
      --  Wakeup timer interrupt enable
      WUTIE          : CR_WUTIE_Field := 16#0#;
      --  Time-stamp interrupt enable
      TSIE           : CR_TSIE_Field := 16#0#;
      --  Add 1 hour (summer time change)
      ADD1H          : CR_ADD1H_Field := 16#0#;
      --  Subtract 1 hour (winter time change)
      SUB1H          : CR_SUB1H_Field := 16#0#;
      --  Backup
      BKP            : CR_BKP_Field := 16#0#;
      --  Calibration Output selection
      COSEL          : CR_COSEL_Field := 16#0#;
      --  Output polarity
      POL            : CR_POL_Field := 16#0#;
      --  Output selection
      OSEL           : CR_OSEL_Field := 16#0#;
      --  Calibration output enable
      COE            : CR_COE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      WCKSEL         at 0 range 0 .. 2;
      TSEDGE         at 0 range 3 .. 3;
      REFCKON        at 0 range 4 .. 4;
      BYPSHAD        at 0 range 5 .. 5;
      FMT            at 0 range 6 .. 6;
      DCE            at 0 range 7 .. 7;
      ALRAE          at 0 range 8 .. 8;
      ALRBE          at 0 range 9 .. 9;
      WUTE           at 0 range 10 .. 10;
      TSE            at 0 range 11 .. 11;
      ALRAIE         at 0 range 12 .. 12;
      ALRBIE         at 0 range 13 .. 13;
      WUTIE          at 0 range 14 .. 14;
      TSIE           at 0 range 15 .. 15;
      ADD1H          at 0 range 16 .. 16;
      SUB1H          at 0 range 17 .. 17;
      BKP            at 0 range 18 .. 18;
      COSEL          at 0 range 19 .. 19;
      POL            at 0 range 20 .. 20;
      OSEL           at 0 range 21 .. 22;
      COE            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   ------------------
   -- ISR_Register --
   ------------------

   subtype ISR_ALRAWF_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_ALRBWF_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_WUTWF_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_SHPF_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_INITS_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_RSF_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_INITF_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_INIT_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_ALRAF_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_ALRBF_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_WUTF_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TSF_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TSOVF_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TAMP1F_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_TAMP2F_Field is Interfaces.Bit_Types.Bit;
   subtype ISR_RECALPF_Field is Interfaces.Bit_Types.Bit;

   --  initialization and status register
   type ISR_Register is record
      --  Read-only. Alarm A write flag
      ALRAWF         : ISR_ALRAWF_Field := 16#1#;
      --  Read-only. Alarm B write flag
      ALRBWF         : ISR_ALRBWF_Field := 16#1#;
      --  Read-only. Wakeup timer write flag
      WUTWF          : ISR_WUTWF_Field := 16#1#;
      --  Shift operation pending
      SHPF           : ISR_SHPF_Field := 16#0#;
      --  Read-only. Initialization status flag
      INITS          : ISR_INITS_Field := 16#0#;
      --  Registers synchronization flag
      RSF            : ISR_RSF_Field := 16#0#;
      --  Read-only. Initialization flag
      INITF          : ISR_INITF_Field := 16#0#;
      --  Initialization mode
      INIT           : ISR_INIT_Field := 16#0#;
      --  Alarm A flag
      ALRAF          : ISR_ALRAF_Field := 16#0#;
      --  Alarm B flag
      ALRBF          : ISR_ALRBF_Field := 16#0#;
      --  Wakeup timer flag
      WUTF           : ISR_WUTF_Field := 16#0#;
      --  Time-stamp flag
      TSF            : ISR_TSF_Field := 16#0#;
      --  Time-stamp overflow flag
      TSOVF          : ISR_TSOVF_Field := 16#0#;
      --  Tamper detection flag
      TAMP1F         : ISR_TAMP1F_Field := 16#0#;
      --  TAMPER2 detection flag
      TAMP2F         : ISR_TAMP2F_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. Recalibration pending Flag
      RECALPF        : ISR_RECALPF_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      ALRAWF         at 0 range 0 .. 0;
      ALRBWF         at 0 range 1 .. 1;
      WUTWF          at 0 range 2 .. 2;
      SHPF           at 0 range 3 .. 3;
      INITS          at 0 range 4 .. 4;
      RSF            at 0 range 5 .. 5;
      INITF          at 0 range 6 .. 6;
      INIT           at 0 range 7 .. 7;
      ALRAF          at 0 range 8 .. 8;
      ALRBF          at 0 range 9 .. 9;
      WUTF           at 0 range 10 .. 10;
      TSF            at 0 range 11 .. 11;
      TSOVF          at 0 range 12 .. 12;
      TAMP1F         at 0 range 13 .. 13;
      TAMP2F         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RECALPF        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   -------------------
   -- PRER_Register --
   -------------------

   subtype PRER_PREDIV_S_Field is Interfaces.Bit_Types.UInt15;
   subtype PRER_PREDIV_A_Field is Interfaces.Bit_Types.UInt7;

   --  prescaler register
   type PRER_Register is record
      --  Synchronous prescaler factor
      PREDIV_S       : PRER_PREDIV_S_Field := 16#FF#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Asynchronous prescaler factor
      PREDIV_A       : PRER_PREDIV_A_Field := 16#7F#;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRER_Register use record
      PREDIV_S       at 0 range 0 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PREDIV_A       at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   -------------------
   -- WUTR_Register --
   -------------------

   subtype WUTR_WUT_Field is Interfaces.Bit_Types.Short;

   --  wakeup timer register
   type WUTR_Register is record
      --  Wakeup auto-reload value bits
      WUT            : WUTR_WUT_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WUTR_Register use record
      WUT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   ---------------------
   -- CALIBR_Register --
   ---------------------

   subtype CALIBR_DC_Field is Interfaces.Bit_Types.UInt5;
   subtype CALIBR_DCS_Field is Interfaces.Bit_Types.Bit;

   --  calibration register
   type CALIBR_Register is record
      --  Digital calibration
      DC            : CALIBR_DC_Field := 16#0#;
      --  unspecified
      Reserved_5_6  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Digital calibration sign
      DCS           : CALIBR_DCS_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CALIBR_Register use record
      DC            at 0 range 0 .. 4;
      Reserved_5_6  at 0 range 5 .. 6;
      DCS           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ---------------------
   -- ALRMAR_Register --
   ---------------------

   subtype ALRMAR_SU_Field is Interfaces.Bit_Types.UInt4;
   subtype ALRMAR_ST_Field is Interfaces.Bit_Types.UInt3;
   subtype ALRMAR_MSK1_Field is Interfaces.Bit_Types.Bit;
   subtype ALRMAR_MNU_Field is Interfaces.Bit_Types.UInt4;
   subtype ALRMAR_MNT_Field is Interfaces.Bit_Types.UInt3;
   subtype ALRMAR_MSK2_Field is Interfaces.Bit_Types.Bit;
   subtype ALRMAR_HU_Field is Interfaces.Bit_Types.UInt4;
   subtype ALRMAR_HT_Field is Interfaces.Bit_Types.UInt2;
   subtype ALRMAR_PM_Field is Interfaces.Bit_Types.Bit;
   subtype ALRMAR_MSK3_Field is Interfaces.Bit_Types.Bit;
   subtype ALRMAR_DU_Field is Interfaces.Bit_Types.UInt4;
   subtype ALRMAR_DT_Field is Interfaces.Bit_Types.UInt2;
   subtype ALRMAR_WDSEL_Field is Interfaces.Bit_Types.Bit;
   subtype ALRMAR_MSK4_Field is Interfaces.Bit_Types.Bit;

   --  alarm A register
   type ALRMAR_Register is record
      --  Second units in BCD format
      SU    : ALRMAR_SU_Field := 16#0#;
      --  Second tens in BCD format
      ST    : ALRMAR_ST_Field := 16#0#;
      --  Alarm A seconds mask
      MSK1  : ALRMAR_MSK1_Field := 16#0#;
      --  Minute units in BCD format
      MNU   : ALRMAR_MNU_Field := 16#0#;
      --  Minute tens in BCD format
      MNT   : ALRMAR_MNT_Field := 16#0#;
      --  Alarm A minutes mask
      MSK2  : ALRMAR_MSK2_Field := 16#0#;
      --  Hour units in BCD format
      HU    : ALRMAR_HU_Field := 16#0#;
      --  Hour tens in BCD format
      HT    : ALRMAR_HT_Field := 16#0#;
      --  AM/PM notation
      PM    : ALRMAR_PM_Field := 16#0#;
      --  Alarm A hours mask
      MSK3  : ALRMAR_MSK3_Field := 16#0#;
      --  Date units or day in BCD format
      DU    : ALRMAR_DU_Field := 16#0#;
      --  Date tens in BCD format
      DT    : ALRMAR_DT_Field := 16#0#;
      --  Week day selection
      WDSEL : ALRMAR_WDSEL_Field := 16#0#;
      --  Alarm A date mask
      MSK4  : ALRMAR_MSK4_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALRMAR_Register use record
      SU    at 0 range 0 .. 3;
      ST    at 0 range 4 .. 6;
      MSK1  at 0 range 7 .. 7;
      MNU   at 0 range 8 .. 11;
      MNT   at 0 range 12 .. 14;
      MSK2  at 0 range 15 .. 15;
      HU    at 0 range 16 .. 19;
      HT    at 0 range 20 .. 21;
      PM    at 0 range 22 .. 22;
      MSK3  at 0 range 23 .. 23;
      DU    at 0 range 24 .. 27;
      DT    at 0 range 28 .. 29;
      WDSEL at 0 range 30 .. 30;
      MSK4  at 0 range 31 .. 31;
   end record;

   ---------------------
   -- ALRMBR_Register --
   ---------------------

   subtype ALRMBR_SU_Field is Interfaces.Bit_Types.UInt4;
   subtype ALRMBR_ST_Field is Interfaces.Bit_Types.UInt3;
   subtype ALRMBR_MSK1_Field is Interfaces.Bit_Types.Bit;
   subtype ALRMBR_MNU_Field is Interfaces.Bit_Types.UInt4;
   subtype ALRMBR_MNT_Field is Interfaces.Bit_Types.UInt3;
   subtype ALRMBR_MSK2_Field is Interfaces.Bit_Types.Bit;
   subtype ALRMBR_HU_Field is Interfaces.Bit_Types.UInt4;
   subtype ALRMBR_HT_Field is Interfaces.Bit_Types.UInt2;
   subtype ALRMBR_PM_Field is Interfaces.Bit_Types.Bit;
   subtype ALRMBR_MSK3_Field is Interfaces.Bit_Types.Bit;
   subtype ALRMBR_DU_Field is Interfaces.Bit_Types.UInt4;
   subtype ALRMBR_DT_Field is Interfaces.Bit_Types.UInt2;
   subtype ALRMBR_WDSEL_Field is Interfaces.Bit_Types.Bit;
   subtype ALRMBR_MSK4_Field is Interfaces.Bit_Types.Bit;

   --  alarm B register
   type ALRMBR_Register is record
      --  Second units in BCD format
      SU    : ALRMBR_SU_Field := 16#0#;
      --  Second tens in BCD format
      ST    : ALRMBR_ST_Field := 16#0#;
      --  Alarm B seconds mask
      MSK1  : ALRMBR_MSK1_Field := 16#0#;
      --  Minute units in BCD format
      MNU   : ALRMBR_MNU_Field := 16#0#;
      --  Minute tens in BCD format
      MNT   : ALRMBR_MNT_Field := 16#0#;
      --  Alarm B minutes mask
      MSK2  : ALRMBR_MSK2_Field := 16#0#;
      --  Hour units in BCD format
      HU    : ALRMBR_HU_Field := 16#0#;
      --  Hour tens in BCD format
      HT    : ALRMBR_HT_Field := 16#0#;
      --  AM/PM notation
      PM    : ALRMBR_PM_Field := 16#0#;
      --  Alarm B hours mask
      MSK3  : ALRMBR_MSK3_Field := 16#0#;
      --  Date units or day in BCD format
      DU    : ALRMBR_DU_Field := 16#0#;
      --  Date tens in BCD format
      DT    : ALRMBR_DT_Field := 16#0#;
      --  Week day selection
      WDSEL : ALRMBR_WDSEL_Field := 16#0#;
      --  Alarm B date mask
      MSK4  : ALRMBR_MSK4_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALRMBR_Register use record
      SU    at 0 range 0 .. 3;
      ST    at 0 range 4 .. 6;
      MSK1  at 0 range 7 .. 7;
      MNU   at 0 range 8 .. 11;
      MNT   at 0 range 12 .. 14;
      MSK2  at 0 range 15 .. 15;
      HU    at 0 range 16 .. 19;
      HT    at 0 range 20 .. 21;
      PM    at 0 range 22 .. 22;
      MSK3  at 0 range 23 .. 23;
      DU    at 0 range 24 .. 27;
      DT    at 0 range 28 .. 29;
      WDSEL at 0 range 30 .. 30;
      MSK4  at 0 range 31 .. 31;
   end record;

   ------------------
   -- WPR_Register --
   ------------------

   subtype WPR_KEY_Field is Interfaces.Bit_Types.Byte;

   --  write protection register
   type WPR_Register is record
      --  Write-only. Write protection key
      KEY           : WPR_KEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WPR_Register use record
      KEY           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   ------------------
   -- SSR_Register --
   ------------------

   subtype SSR_SS_Field is Interfaces.Bit_Types.Short;

   --  sub second register
   type SSR_Register is record
      --  Read-only. Sub second value
      SS             : SSR_SS_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSR_Register use record
      SS             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   ---------------------
   -- SHIFTR_Register --
   ---------------------

   subtype SHIFTR_SUBFS_Field is Interfaces.Bit_Types.UInt15;
   subtype SHIFTR_ADD1S_Field is Interfaces.Bit_Types.Bit;

   --  shift control register
   type SHIFTR_Register is record
      --  Write-only. Subtract a fraction of a second
      SUBFS          : SHIFTR_SUBFS_Field := 16#0#;
      --  unspecified
      Reserved_15_30 : Interfaces.Bit_Types.Short := 16#0#;
      --  Write-only. Add one second
      ADD1S          : SHIFTR_ADD1S_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHIFTR_Register use record
      SUBFS          at 0 range 0 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      ADD1S          at 0 range 31 .. 31;
   end record;

   -------------------
   -- TSTR_Register --
   -------------------

   subtype TSTR_SU_Field is Interfaces.Bit_Types.UInt4;
   subtype TSTR_ST_Field is Interfaces.Bit_Types.UInt3;
   subtype TSTR_MNU_Field is Interfaces.Bit_Types.UInt4;
   subtype TSTR_MNT_Field is Interfaces.Bit_Types.UInt3;
   subtype TSTR_HU_Field is Interfaces.Bit_Types.UInt4;
   subtype TSTR_HT_Field is Interfaces.Bit_Types.UInt2;
   subtype TSTR_PM_Field is Interfaces.Bit_Types.Bit;

   --  time stamp time register
   type TSTR_Register is record
      --  Read-only. Second units in BCD format
      SU             : TSTR_SU_Field;
      --  Read-only. Second tens in BCD format
      ST             : TSTR_ST_Field;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit;
      --  Read-only. Minute units in BCD format
      MNU            : TSTR_MNU_Field;
      --  Read-only. Minute tens in BCD format
      MNT            : TSTR_MNT_Field;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit;
      --  Read-only. Hour units in BCD format
      HU             : TSTR_HU_Field;
      --  Read-only. Hour tens in BCD format
      HT             : TSTR_HT_Field;
      --  Read-only. AM/PM notation
      PM             : TSTR_PM_Field;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSTR_Register use record
      SU             at 0 range 0 .. 3;
      ST             at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MNU            at 0 range 8 .. 11;
      MNT            at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HU             at 0 range 16 .. 19;
      HT             at 0 range 20 .. 21;
      PM             at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   -------------------
   -- TSDR_Register --
   -------------------

   subtype TSDR_DU_Field is Interfaces.Bit_Types.UInt4;
   subtype TSDR_DT_Field is Interfaces.Bit_Types.UInt2;
   subtype TSDR_MU_Field is Interfaces.Bit_Types.UInt4;
   subtype TSDR_MT_Field is Interfaces.Bit_Types.Bit;
   subtype TSDR_WDU_Field is Interfaces.Bit_Types.UInt3;

   --  time stamp date register
   type TSDR_Register is record
      --  Read-only. Date units in BCD format
      DU             : TSDR_DU_Field;
      --  Read-only. Date tens in BCD format
      DT             : TSDR_DT_Field;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2;
      --  Read-only. Month units in BCD format
      MU             : TSDR_MU_Field;
      --  Read-only. Month tens in BCD format
      MT             : TSDR_MT_Field;
      --  Read-only. Week day units
      WDU            : TSDR_WDU_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSDR_Register use record
      DU             at 0 range 0 .. 3;
      DT             at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MU             at 0 range 8 .. 11;
      MT             at 0 range 12 .. 12;
      WDU            at 0 range 13 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --------------------
   -- TSSSR_Register --
   --------------------

   subtype TSSSR_SS_Field is Interfaces.Bit_Types.Short;

   --  timestamp sub second register
   type TSSSR_Register is record
      --  Read-only. Sub second value
      SS             : TSSSR_SS_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSSSR_Register use record
      SS             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -------------------
   -- CALR_Register --
   -------------------

   subtype CALR_CALM_Field is Interfaces.Bit_Types.UInt9;

   ---------------
   -- CALR.CALW --
   ---------------

   --  CALR_CALW array element
   subtype CALR_CALW_Element is Interfaces.Bit_Types.Bit;

   --  CALR_CALW array
   type CALR_CALW_Field_Array is array (8 .. 9) of CALR_CALW_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CALR_CALW
   type CALR_CALW_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CALW as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  CALW as an array
            Arr : CALR_CALW_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CALR_CALW_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CALR_CALP_Field is Interfaces.Bit_Types.Bit;

   --  calibration register
   type CALR_Register is record
      --  Calibration minus
      CALM           : CALR_CALM_Field := 16#0#;
      --  unspecified
      Reserved_9_12  : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Use a 16-second calibration cycle period
      CALW           : CALR_CALW_Field := (As_Array => False, Val => 16#0#);
      --  Increase frequency of RTC by 488.5 ppm
      CALP           : CALR_CALP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CALR_Register use record
      CALM           at 0 range 0 .. 8;
      Reserved_9_12  at 0 range 9 .. 12;
      CALW           at 0 range 13 .. 14;
      CALP           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --------------------
   -- TAFCR_Register --
   --------------------

   subtype TAFCR_TAMP1E_Field is Interfaces.Bit_Types.Bit;
   subtype TAFCR_TAMP1TRG_Field is Interfaces.Bit_Types.Bit;
   subtype TAFCR_TAMPIE_Field is Interfaces.Bit_Types.Bit;
   subtype TAFCR_TAMP2E_Field is Interfaces.Bit_Types.Bit;
   subtype TAFCR_TAMP2TRG_Field is Interfaces.Bit_Types.Bit;
   subtype TAFCR_TAMPTS_Field is Interfaces.Bit_Types.Bit;
   subtype TAFCR_TAMPFREQ_Field is Interfaces.Bit_Types.UInt3;
   subtype TAFCR_TAMPFLT_Field is Interfaces.Bit_Types.UInt2;
   subtype TAFCR_TAMPPRCH_Field is Interfaces.Bit_Types.UInt2;
   subtype TAFCR_TAMPPUDIS_Field is Interfaces.Bit_Types.Bit;
   subtype TAFCR_TAMP1INSEL_Field is Interfaces.Bit_Types.Bit;
   subtype TAFCR_TSINSEL_Field is Interfaces.Bit_Types.Bit;
   subtype TAFCR_ALARMOUTTYPE_Field is Interfaces.Bit_Types.Bit;

   --  tamper and alternate function configuration register
   type TAFCR_Register is record
      --  Tamper 1 detection enable
      TAMP1E         : TAFCR_TAMP1E_Field := 16#0#;
      --  Active level for tamper 1
      TAMP1TRG       : TAFCR_TAMP1TRG_Field := 16#0#;
      --  Tamper interrupt enable
      TAMPIE         : TAFCR_TAMPIE_Field := 16#0#;
      --  Tamper 2 detection enable
      TAMP2E         : TAFCR_TAMP2E_Field := 16#0#;
      --  Active level for tamper 2
      TAMP2TRG       : TAFCR_TAMP2TRG_Field := 16#0#;
      --  unspecified
      Reserved_5_6   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Activate timestamp on tamper detection event
      TAMPTS         : TAFCR_TAMPTS_Field := 16#0#;
      --  Tamper sampling frequency
      TAMPFREQ       : TAFCR_TAMPFREQ_Field := 16#0#;
      --  Tamper filter count
      TAMPFLT        : TAFCR_TAMPFLT_Field := 16#0#;
      --  Tamper precharge duration
      TAMPPRCH       : TAFCR_TAMPPRCH_Field := 16#0#;
      --  TAMPER pull-up disable
      TAMPPUDIS      : TAFCR_TAMPPUDIS_Field := 16#0#;
      --  TAMPER1 mapping
      TAMP1INSEL     : TAFCR_TAMP1INSEL_Field := 16#0#;
      --  TIMESTAMP mapping
      TSINSEL        : TAFCR_TSINSEL_Field := 16#0#;
      --  AFO_ALARM output type
      ALARMOUTTYPE   : TAFCR_ALARMOUTTYPE_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAFCR_Register use record
      TAMP1E         at 0 range 0 .. 0;
      TAMP1TRG       at 0 range 1 .. 1;
      TAMPIE         at 0 range 2 .. 2;
      TAMP2E         at 0 range 3 .. 3;
      TAMP2TRG       at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      TAMPTS         at 0 range 7 .. 7;
      TAMPFREQ       at 0 range 8 .. 10;
      TAMPFLT        at 0 range 11 .. 12;
      TAMPPRCH       at 0 range 13 .. 14;
      TAMPPUDIS      at 0 range 15 .. 15;
      TAMP1INSEL     at 0 range 16 .. 16;
      TSINSEL        at 0 range 17 .. 17;
      ALARMOUTTYPE   at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   -----------------------
   -- ALRMASSR_Register --
   -----------------------

   subtype ALRMASSR_SS_Field is Interfaces.Bit_Types.UInt15;
   subtype ALRMASSR_MASKSS_Field is Interfaces.Bit_Types.UInt4;

   --  alarm A sub second register
   type ALRMASSR_Register is record
      --  Sub seconds value
      SS             : ALRMASSR_SS_Field := 16#0#;
      --  unspecified
      Reserved_15_23 : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Mask the most-significant bits starting at this bit
      MASKSS         : ALRMASSR_MASKSS_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALRMASSR_Register use record
      SS             at 0 range 0 .. 14;
      Reserved_15_23 at 0 range 15 .. 23;
      MASKSS         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------------
   -- ALRMBSSR_Register --
   -----------------------

   subtype ALRMBSSR_SS_Field is Interfaces.Bit_Types.UInt15;
   subtype ALRMBSSR_MASKSS_Field is Interfaces.Bit_Types.UInt4;

   --  alarm B sub second register
   type ALRMBSSR_Register is record
      --  Sub seconds value
      SS             : ALRMBSSR_SS_Field := 16#0#;
      --  unspecified
      Reserved_15_23 : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Mask the most-significant bits starting at this bit
      MASKSS         : ALRMBSSR_MASKSS_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALRMBSSR_Register use record
      SS             at 0 range 0 .. 14;
      Reserved_15_23 at 0 range 15 .. 23;
      MASKSS         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Real-time clock
   type RTC_Peripheral is record
      --  time register
      TR       : TR_Register;
      --  date register
      DR       : DR_Register;
      --  control register
      CR       : CR_Register;
      --  initialization and status register
      ISR      : ISR_Register;
      --  prescaler register
      PRER     : PRER_Register;
      --  wakeup timer register
      WUTR     : WUTR_Register;
      --  calibration register
      CALIBR   : CALIBR_Register;
      --  alarm A register
      ALRMAR   : ALRMAR_Register;
      --  alarm B register
      ALRMBR   : ALRMBR_Register;
      --  write protection register
      WPR      : WPR_Register;
      --  sub second register
      SSR      : SSR_Register;
      --  shift control register
      SHIFTR   : SHIFTR_Register;
      --  time stamp time register
      TSTR     : TSTR_Register;
      --  time stamp date register
      TSDR     : TSDR_Register;
      --  timestamp sub second register
      TSSSR    : TSSSR_Register;
      --  calibration register
      CALR     : CALR_Register;
      --  tamper and alternate function configuration register
      TAFCR    : TAFCR_Register;
      --  alarm A sub second register
      ALRMASSR : ALRMASSR_Register;
      --  alarm B sub second register
      ALRMBSSR : ALRMBSSR_Register;
      --  backup register
      BKP0R    : Interfaces.Bit_Types.Word;
      --  backup register
      BKP1R    : Interfaces.Bit_Types.Word;
      --  backup register
      BKP2R    : Interfaces.Bit_Types.Word;
      --  backup register
      BKP3R    : Interfaces.Bit_Types.Word;
      --  backup register
      BKP4R    : Interfaces.Bit_Types.Word;
      --  backup register
      BKP5R    : Interfaces.Bit_Types.Word;
      --  backup register
      BKP6R    : Interfaces.Bit_Types.Word;
      --  backup register
      BKP7R    : Interfaces.Bit_Types.Word;
      --  backup register
      BKP8R    : Interfaces.Bit_Types.Word;
      --  backup register
      BKP9R    : Interfaces.Bit_Types.Word;
      --  backup register
      BKP10R   : Interfaces.Bit_Types.Word;
      --  backup register
      BKP11R   : Interfaces.Bit_Types.Word;
      --  backup register
      BKP12R   : Interfaces.Bit_Types.Word;
      --  backup register
      BKP13R   : Interfaces.Bit_Types.Word;
      --  backup register
      BKP14R   : Interfaces.Bit_Types.Word;
      --  backup register
      BKP15R   : Interfaces.Bit_Types.Word;
      --  backup register
      BKP16R   : Interfaces.Bit_Types.Word;
      --  backup register
      BKP17R   : Interfaces.Bit_Types.Word;
      --  backup register
      BKP18R   : Interfaces.Bit_Types.Word;
      --  backup register
      BKP19R   : Interfaces.Bit_Types.Word;
   end record
     with Volatile;

   for RTC_Peripheral use record
      TR       at 0 range 0 .. 31;
      DR       at 4 range 0 .. 31;
      CR       at 8 range 0 .. 31;
      ISR      at 12 range 0 .. 31;
      PRER     at 16 range 0 .. 31;
      WUTR     at 20 range 0 .. 31;
      CALIBR   at 24 range 0 .. 31;
      ALRMAR   at 28 range 0 .. 31;
      ALRMBR   at 32 range 0 .. 31;
      WPR      at 36 range 0 .. 31;
      SSR      at 40 range 0 .. 31;
      SHIFTR   at 44 range 0 .. 31;
      TSTR     at 48 range 0 .. 31;
      TSDR     at 52 range 0 .. 31;
      TSSSR    at 56 range 0 .. 31;
      CALR     at 60 range 0 .. 31;
      TAFCR    at 64 range 0 .. 31;
      ALRMASSR at 68 range 0 .. 31;
      ALRMBSSR at 72 range 0 .. 31;
      BKP0R    at 80 range 0 .. 31;
      BKP1R    at 84 range 0 .. 31;
      BKP2R    at 88 range 0 .. 31;
      BKP3R    at 92 range 0 .. 31;
      BKP4R    at 96 range 0 .. 31;
      BKP5R    at 100 range 0 .. 31;
      BKP6R    at 104 range 0 .. 31;
      BKP7R    at 108 range 0 .. 31;
      BKP8R    at 112 range 0 .. 31;
      BKP9R    at 116 range 0 .. 31;
      BKP10R   at 120 range 0 .. 31;
      BKP11R   at 124 range 0 .. 31;
      BKP12R   at 128 range 0 .. 31;
      BKP13R   at 132 range 0 .. 31;
      BKP14R   at 136 range 0 .. 31;
      BKP15R   at 140 range 0 .. 31;
      BKP16R   at 144 range 0 .. 31;
      BKP17R   at 148 range 0 .. 31;
      BKP18R   at 152 range 0 .. 31;
      BKP19R   at 156 range 0 .. 31;
   end record;

   --  Real-time clock
   RTC_Periph : aliased RTC_Peripheral
     with Import, Address => RTC_Base;

end Interfaces.STM32.RTC;
