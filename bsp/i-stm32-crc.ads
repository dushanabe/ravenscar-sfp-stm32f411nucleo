--
--  Copyright (C) 2016, AdaCore
--

--  This spec has been automatically generated from STM32F411xx.svd

pragma Ada_2012;

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.CRC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   ------------------
   -- IDR_Register --
   ------------------

   subtype IDR_IDR_Field is Interfaces.Bit_Types.Byte;

   --  Independent Data register
   type IDR_Register is record
      --  Independent Data register
      IDR           : IDR_IDR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register use record
      IDR           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- CR_Register --
   -----------------

   subtype CR_CR_Field is Interfaces.Bit_Types.Bit;

   --  Control register
   type CR_Register is record
      --  Write-only. Control regidter
      CR            : CR_CR_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      CR            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Cryptographic processor
   type CRC_Peripheral is record
      --  Data register
      DR  : Interfaces.Bit_Types.Word;
      --  Independent Data register
      IDR : IDR_Register;
      --  Control register
      CR  : CR_Register;
   end record
     with Volatile;

   for CRC_Peripheral use record
      DR  at 0 range 0 .. 31;
      IDR at 4 range 0 .. 31;
      CR  at 8 range 0 .. 31;
   end record;

   --  Cryptographic processor
   CRC_Periph : aliased CRC_Peripheral
     with Import, Address => CRC_Base;

end Interfaces.STM32.CRC;
