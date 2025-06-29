CREATE SCHEMA AUTOMOBILE_LOAN_DEFAULT;

SELECT * FROM loan_data;

-- Mengetahui status pernikahan dominan dan kaitannya dengan gagal bayar. 
SELECT 
  Client_Marital_Status,
  COUNT(*) AS Total,
  ROUND(AVG(Client_Default), 2) AS `Default Rate`
FROM loan_data
GROUP BY Client_Marital_Status;


-- Rerata Skor Sumber Kredit Berdasarkan Defaul
SELECT 
    Client_Default,
    ROUND(AVG(Score_Source_1), 2) AS `Average Score 1`,
    ROUND(AVG(Score_Source_2), 2) AS `Average Score 2`,
    ROUND(AVG(Score_Source_3), 2) AS `Average Score 3`
FROM loan_data
GROUP BY Client_Default;


