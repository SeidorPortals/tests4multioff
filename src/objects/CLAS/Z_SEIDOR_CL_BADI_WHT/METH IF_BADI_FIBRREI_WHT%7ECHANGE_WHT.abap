  METHOD if_badi_fibrrei_wht~change_wht.


" Lógica final: Recorrer cada línea de la tabla de retención y
    " dejar una "marca" en el campo de observación para confirmar
    " que el BAdI se ejecutó.

    LOOP AT ct_wht ASSIGNING FIELD-SYMBOL(<fs_wht_line>).

      " Modificamos el campo de observación del pago.
      " Este texto aparecerá en el documento final.
      <fs_wht_line>-observ_pgto = 'BAdI Z_SEIDOR_CL_BADI_WHT ejecutado!'.


      " --- Opcional: Si prefieres modificar el valor numérico ---
      " Una vez que confirmes que lo de arriba funciona, puedes
      " comentar esa línea y descomentar la siguiente para probar
      " la modificación de un campo de valor.
      "
      " <fs_wht_line>-vlr_base_ir = '1.23'.

       ENDLOOP.

  ENDMETHOD.