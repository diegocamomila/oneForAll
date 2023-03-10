SELECT 
    MIN(planos.valor) AS 'faturamento_minimo', 
    MAX(planos.valor) AS 'faturamento_maximo',
    ROUND(AVG(planos.valor),2) AS 'faturamento_medio',
    ROUND(SUM(planos.valor),2) AS 'faturamento_total'
FROM SpotifyClone.usuarios AS usuarios
JOIN SpotifyClone.planos AS planos ON usuarios.plano_id=planos.plano_id;