CLASS lhc_buffer DEFINITION.
* 1) define the data buffer
  PUBLIC SECTION.

    TYPES: BEGIN OF ty_buffer.
        INCLUDE TYPE   zdd_booking_ale AS data.
    TYPES: flag TYPE c LENGTH 1,
           END OF ty_buffer.

    TYPES tt_bookings TYPE SORTED TABLE OF ty_buffer WITH UNIQUE KEY booking.

    CLASS-DATA mt_buffer TYPE tt_bookings.
ENDCLASS.

CLASS lhc_ZDD_BOOKING_ALE DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zdd_booking_ale RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE zdd_booking_ale.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zdd_booking_ale.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zdd_booking_ale.

    METHODS read FOR READ
      IMPORTING keys FOR READ zdd_booking_ale RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK zdd_booking_ale.

ENDCLASS.

CLASS lhc_ZDD_BOOKING_ALE IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD create.
  ENDMETHOD.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZDD_BOOKING_ALE DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZDD_BOOKING_ALE IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
