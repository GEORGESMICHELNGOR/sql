SELECT * FROM clients;


SELECT product_name, category FROM produits WHERE price BETWEEN 5000 AND 10000;

SELECT * FROM produits ORDER BY price DESC;


SELECT 
    COUNT(*) AS nombre_total_de_commandes,
    AVG(amount) AS montant_moyen,
    MAX(amount) AS montant_total_le_plus_élevé,
    MIN(amount) AS montant_total_le_plus_bas
FROM commandes;
  n

SELECT product_id, COUNT(*) AS nombre_de_commandes
FROM commandes
GROUP BY product_id;
SELECT customer_id


FROM (
    SELECT customer_id, COUNT(*) AS nombre_de_commandes
    FROM commandes
    GROUP BY customer_id
) AS sub
WHERE nombre_de_commandes > 2;


SELECT 
    EXTRACT(MONTH FROM date) AS mois,
    COUNT(*) AS nombre_de_commandes
FROM commandes
WHERE EXTRACT(YEAR FROM date) = 2020
GROUP BY EXTRACT(MONTH FROM date);


SELECT 
    produits.product_name,
    clients.customer_name,
    commandes.date
FROM commandes
JOIN produits ON commandes.product_id = produits.product_id
JOIN clients ON commandes.customer_id = clients.customer_id;
