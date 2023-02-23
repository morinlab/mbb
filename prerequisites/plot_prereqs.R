full_dag <- dagify(#MBB309 ~ MBB231,
                     MBB308 ~ MBB331,
                     MBB322 ~ MBB231,
                     #MBB321 ~ MBB231,
                     MBB323 ~ MBB222,
                     MBB324 ~ MBB222,
                     #MBB326 ~ MBB231,
                     #MBB328 ~ MBB231,
                     #MBB331 ~ MBB231,
                     MBB342 ~ MBB110,
                     MBB402 ~ MBB331,
                     MBB421 ~ MBB331,
                     MBB423 ~ MBB323,
                     MBB424 ~ MBB322 + MBB323,
                     MBB427 ~ MBB326,
                     MBB429 ~ MBB331,
                     MBB430 ~ MBB331 + MBB322,
                     MBB431 ~ MBB331 + MBB322,
                     MBB432 ~ MBB331 + MBB308,
                     MBB433 ~ MBB331,
                     MBB436 ~ MBB331,
                     MBB438 ~ MBB331,
                     MBB441 ~ MBB331 + MBB342,
                     MBB443 ~ MBB322 + MBB321,
                     MBB445 ~ MBB326 + MBB328,
                     MBB446 ~ MBB322 + MBB331,
                     MBB465 ~ MBB331 + MBB342,
                     MBB461 ~ MBB331 + MBB342,
                     MBB462 ~ MBB331 + MBB342,
                     MBB464 ~ MBB331 + MBB342,
                     MBB463 ~ MBB331,
                     MBB478 ~ MBB331
                     
                     
)

genome_dag <- dagify(
  CHEM281 ~ CHEM121 + CHEM122,
  BISC202 ~ BISC101 + BISC102,
  MBB222 ~ CHEM281,
  MBB308 ~ MBB331,
  MBB231 ~ MBB222 + CHEM282 + BISC101 + MBB222,
  MBB331 ~ MBB231 + BISC202,
  MBB342 ~ MBB110 + BISC202 + MBB110 + STAT270,
  BISC424 ~ BISC101 + BISC202 + MBB222 + MBB231,
  MBB441 ~ MBB331 + MBB342,
  MBB465 ~ MBB331 + MBB342,
  MBB461 ~ MBB331 + MBB342,
  MBB462 ~ MBB331 + MBB342,
  MBB464 ~ MBB331 + MBB342,
  MBB463 ~ MBB331
  
)
ggdag(genome_dag,layout="auto",node_size=15,text_size=2.5,edge_type = "diagonal") + theme_dag_blank() + ggtitle("Genomics Certificate")


ggdag(full_dag,layout="auto",node_size=15,text_size=2.5) + theme_dag_blank()


ggdag(full_dag,layout="auto",node_size=14,text_size=2.2,edge_type = "diagonal") + theme_dag_blank() + ggtitle("Upper Division MBB")




ii_dag <- dagify(
  CHEM281 ~ CHEM121 + CHEM122,
  MBB231 ~ MBB222 + CHEM282 + BISC101 + MBB222,
  MBB222 ~ CHEM281,
  MBB309 ~ MBB231 + CHEM215 + CHEM286,
  MBB308 ~ MBB331,
  MBB321 ~ MBB231,
  MBB322 ~ MBB231,
  MBB323 ~ MBB222 + MATH152 + CHEM122,
  MBB324 ~ MBB222,
  MBB326 ~ MBB231,
  MBB328 ~ MBB231,
  MBB331 ~ MBB231,
  MBB342 ~ MBB110 + BISC202 + MBB110 + STAT270,
  MBB402 ~ MBB331,
  HSCI442 ~ MBB326 + MBB308,
  MBB423 ~ MBB323,
  MBB422 ~ MBB322 + MBB309,
  MBB430 ~ MBB331 + MBB322,
  MBB432 ~ MBB331 + MBB308,
  MBB438 ~ MBB331,
  MBB441 ~ MBB331 + MBB342,
  MBB445 ~ MBB326 + MBB328,
  MBB446 ~ MBB322 + MBB331,
  MBB461 ~ MBB331 + MBB342,
  MBB462 ~ MBB331 + MBB342,
  MBB478 ~ MBB331
)
ggdag(ii_dag,layout="auto",node_size=15,text_size=2.5,edge_type = "diagonal") + 
  theme_dag_blank() + ggtitle("Infection & Immunity Concentration")

