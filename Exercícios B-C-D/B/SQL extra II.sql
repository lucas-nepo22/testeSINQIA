DELIMITER //

CREATE PROCEDURE GerenciarCidades(
    IN operacao VARCHAR(10),
    IN codigo_cidade INT,
    IN nome VARCHAR(100),
    IN estado VARCHAR(50),
    IN cep_inicial VARCHAR(10),
    IN cep_final VARCHAR(10)
)
BEGIN
    IF operacao = 'INSERT' THEN
        INSERT INTO CIDADES (Codigo_Cidade, Nome, Estado, Cep_Inicial, Cep_Final)
        VALUES (codigo_cidade, nome, estado, cep_inicial, cep_final);
    ELSEIF operacao = 'UPDATE' THEN
        UPDATE CIDADES
        SET Nome = nome, Estado = estado, Cep_Inicial = cep_inicial, Cep_Final = cep_final
        WHERE Codigo_Cidade = codigo_cidade;
    ELSEIF operacao = 'DELETE' THEN
        DELETE FROM CIDADES
        WHERE Codigo_Cidade = codigo_cidade;
    ELSE
        -- Caso operação inválida
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Operação inválida';
    END IF;
END //

DELIMITER ;
