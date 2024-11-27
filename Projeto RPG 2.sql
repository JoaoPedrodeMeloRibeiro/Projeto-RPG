DROP DATABASE IF EXISTS RPG;
CREATE DATABASE IF NOT EXISTS RPG;
USE RPG;

CREATE TABLE IF NOT EXISTS Ficha (
  idFicha INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(100) NOT NULL,
  Jogador VARCHAR(100) NOT NULL,
  Nível INT NOT NULL,
  Xp INT NULL,
  Idade INT NOT NULL,
  Classe VARCHAR(45) NOT NULL,
  Raça VARCHAR(45) NOT NULL,
  Aparência VARCHAR(500) NULL,
  Moedas INT NULL,
  Inspiração INT NULL,
  F0RÇA INT NULL,
  DESTREZA INT NULL,
  CONSTITUIÇÃO INT NULL,
  INTELIGENCIA INT NULL,
  SABEDORIA INT NULL,
  CARISMA INT NULL,
  PontosDeV INT NULL,
  ClasseDeArmadura INT NULL,
  PercepçãoPassiva INT NULL,
  Proficiências MEDIUMTEXT NULL,
  Tamanho FLOAT NOT NULL,
  LínguasConhecidas TINYTEXT NULL
);

CREATE TABLE IF NOT EXISTS Classe (
 idClasse INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 NomeClasse VARCHAR(45) NOT NULL,
 DadoDeVida INT NULL,
 Profiências TINYTEXT NULL,
 Nível INT NULL
);

DROP TABLE IF EXISTS Raça;
CREATE TABLE IF NOT EXISTS Raça (
  idRaça INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  NomeRaça VARCHAR(45) NOT NULL,
  AumentoDeAtributo1 INT NULL,
  AumentoDeAtributo2 INT NULL,
  Habilidades TINYTEXT NULL,
  LinguasConhecidas VARCHAR(100) NULL,
  VisãoNoEscuro  BINARY NULL,
  Deslocamento FLOAT NULL,
  Tendência  VARCHAR(45) NULL,
  Proficiências TEXT NULL
);


INSERT INTO Classe (NomeClasse, DadoDeVida, Profiências, Nível) VALUES 
('Bárbaro','12', 'Armaduras leves e médias, escudos, armas simples e marciais', '1'),
('Bardo','8','Armaduras leves, armas simples, bestas de mão, espadas longas, rapieiras, espadas curtas', '1'),
('Bruxo', '8','Armaduras leves, armas simples', '1'),
('Clérigo','8', 'Armaduras leves e médias, escudos, armas simples', '1'),
('Druida','8', 'Armaduras leves e médias (não-metálicas), escudos (não-metálicos), clavas, adagas,dardos, azagaias, maças, bordões,cimitarras, foices, fundas e lanças', '1'),
('Feiticeiro', '6', 'Adagas, dardos, fundas, bordões, bestas leves', '1'),
('Guerreiro','10', 'Todas as armaduras, armas simples e marciais', '1'),
('Ladino','8', 'Armaduras leves, armas simples, bestas de mão, espadas longas, rapieiras, espadas curtas', '1'),
('Mago', '6', 'Adagas, dardos, fundas, bastões, bestas leves', '1'),
('Monge', '8', 'Armas simples, espadas curtas', '1'),
('Paladino', '10', 'Todas as armaduras, escudos, armas simples e marciais', '1'),
('Patrulheiro','10', 'Armaduras leves e médias,escudos, armas simples e marciais', '1');

INSERT INTO `Raça` (
  `NomeRaça`, `AumentoDeAtributo1`, `AumentoDeAtributo2`, `Habilidades`, `LinguasConhecidas`, `VisãoNoEscuro`, `Deslocamento`, `Tendência`, `Proficiências`
) VALUES 
('Anão', 2, NULL, 'Resiliência Anã', 'Comum e Anão', 1, 7.5, 'Leal e Bom', 'Treinamento Anão em Combate: Você tem proficiência com machados de batalha, machadinhas, martelos leves e martelos de guerra'), 
('Elfo', 2, NULL, 'Ancestral Feérico e Transe', 'Comum e Élfico', 1, 9, 'Caótico e Bom', 'Sentidos Aguçados: Você tem proficiência na perícia Percepção'), 
('Halfling', 2, NULL, 'Agilidade Halfling', 'Comum e Halfling', 0, 7.5, 'Leal e Bom', 'Bravura: Você tem vantagem em testes de resistência contra ficar amedrontado'),
('Humano', 1, NULL, NULL, 'Comum e outro idioma adicional à sua escolha', 0, 9, NULL, NULL), 
('Draconato', 2, 1, 'Ancestral Dracônico e Arma de Sopro', 'Comum e Dracônico', 0, 9, NULL, 'Resistência a Dano: Você possui resistência ao tipo de dano associado ao seu ancestral dracônico'), 
('Gnomo', 2, NULL, 'Esperteza Gnômica', 'Comum e Gnômico', 1, 7.5, NULL, NULL),
('Meio-Elfo', 2, 1, 'Ancestral Feérico', 'Comum, Élfico e um idioma adicional à sua escolha', 1, 9, 'Caótico Bom', 'Versatilidade em Perícia: Você ganha proficiência em duas perícias, à sua escolha'),
('Meio-Orc', 2, 1, 'Resistência Implacável, Ataques Selvagens', 'Comum e Orc', 1, 9, 'Caótico Mau', 'Ameaçador: Você adquire proficiência na perícia Intimidação'),
('Tiefling', 1, 2, 'Legado Infernal', 'Comum e Infernal', 1, 9, 'Caótico Maligno', 'Resistência Infernal: Você possui resistência a dano de fogo');


SELECT * FROM Classe;
SELECT * FROM Raça;

INSERT INTO `Ficha` (
  `Nome`, `Jogador`, `Nível`, `Xp`, `Idade`, `Classe`, `Raça`, `Aparência`, `Moedas`, `Inspiração`, `F0RÇA`, `DESTREZA`, `CONSTITUIÇÃO`, `INTELIGENCIA`, `SABEDORIA`, `CARISMA`, `PontosDeV`, `ClasseDeArmadura`, `PercepçãoPassiva`, `Proficiências`, `Tamanho`, `LínguasConhecidas`
) VALUES (
  'Briseida', 'Maria', 1, 0, 87, 'Guerreiro', 'Humano', 'Alto e forte, com cicatrizes de batalhas', 100, 1, 18, 14, 16, 12, 10, 15, 50, 18, 12, 'Espadas longas, Arcos', 1.85, 'Comum, Élfico'
);

INSERT INTO `Ficha` (
  `Nome`, `Jogador`, `Nível`, `Xp`, `Idade`, `Classe`, `Raça`, `Aparência`, `Moedas`, `Inspiração`, `F0RÇA`, `DESTREZA`, `CONSTITUIÇÃO`, `INTELIGENCIA`, `SABEDORIA`, `CARISMA`, `PontosDeV`, `ClasseDeArmadura`, `PercepçãoPassiva`, `Proficiências`, `Tamanho`, `LínguasConhecidas`
) VALUES (
  'Shamash', 'Luiz',1, 0, 293, 'Arqueiro', 'Elfo', 'Elegante e ágil, com olhos penetrantes', 150, 2, 14, 20, 12, 16, 14, 18, 45, 17, 15, 'Arcos, Espadas curtas', 1.75, 'Comum, Élfico'
);

INSERT INTO `Ficha` (
  `Nome`, `Jogador`, `Nível`, `Xp`, `Idade`, `Classe`, `Raça`, `Aparência`, `Moedas`, `Inspiração`, `F0RÇA`, `DESTREZA`, `CONSTITUIÇÃO`, `INTELIGENCIA`, `SABEDORIA`, `CARISMA`, `PontosDeV`, `ClasseDeArmadura`, `PercepçãoPassiva`, `Proficiências`, `Tamanho`, `LínguasConhecidas`
) VALUES (
  'Valindre', 'Gustavo', 1, 0, 140, 'Guerreiro', 'Anão', 'Baixo e robusto, com barba longa e trançada', 200, 1, 20, 12, 18, 10, 12, 14, 55, 19, 10, 'Machados de batalha, Martelos', 1.35, 'Comum, Anão'
);

INSERT INTO `Ficha` (
  `Nome`, `Jogador`, `Nível`, `Xp`, `Idade`, `Classe`, `Raça`, `Aparência`, `Moedas`, `Inspiração`, `F0RÇA`, `DESTREZA`, `CONSTITUIÇÃO`, `INTELIGENCIA`, `SABEDORIA`, `CARISMA`, `PontosDeV`, `ClasseDeArmadura`, `PercepçãoPassiva`, `Proficiências`, `Tamanho`, `LínguasConhecidas`
) VALUES (
  'Fengorn', 'Lucas', 1, 0, 120, 'Mago', 'Elfo', 'Elegante e ágil, com olhos penetrantes', 150, 2, 10, 18, 12, 20, 14, 16, 30, 15, 14, 'Magias, Poções', 1.75, 'Comum, Élfico'
);

INSERT INTO `Ficha` (
  `Nome`, `Jogador`, `Nível`, `Xp`, `Idade`, `Classe`, `Raça`, `Aparência`, `Moedas`, `Inspiração`, `F0RÇA`, `DESTREZA`, `CONSTITUIÇÃO`, `INTELIGENCIA`, `SABEDORIA`, `CARISMA`, `PontosDeV`, `ClasseDeArmadura`, `PercepçãoPassiva`, `Proficiências`, `Tamanho`, `LínguasConhecidas`
) VALUES (
  'Thalfil', 'Ana', 1, 0, 150, 'Paladino', 'Humano', 'Alto e forte, com armadura brilhante', 100, 1, 18, 14, 16, 12, 12, 15, 40, 17, 12, 'Espadas longas, Escudos', 1.80, 'Comum, Celestial'
);


UPDATE `Ficha`
SET `Moedas` = 300
WHERE `idFicha` = 1; 


UPDATE `Ficha`
SET `Moedas` = 300
WHERE `idFicha` = 2; 


UPDATE `Ficha`
SET `ClasseDeArmadura` = 20
WHERE `idFicha` = 3; 


UPDATE `Ficha`
SET `PercepçãoPassiva` = 15
WHERE `idFicha` = 3; 

UPDATE `Ficha`
SET `Inspiração` = 3
WHERE `idFicha` = 4; 

-- Excluindo fichas
DELETE FROM `Ficha`
WHERE `idFicha` = 1; 

DELETE FROM `Ficha`
WHERE `idFicha` = 2; 

DELETE FROM `Ficha`
WHERE `idFicha` = 3; 

-- Seleciona informações de personagens e suas classes
SELECT `Ficha`.`Nome`, `Ficha`.`Jogador`, `Classe`.`NomeClasse`
FROM `Ficha`
JOIN `Classe` ON `Ficha`.`Classe` = `Classe`.`NomeClasse`;

-- Seleciona informações de personagens e suas raças
SELECT `Ficha`.`Nome`, `Ficha`.`Jogador`, `Raça`.`NomeRaça`
FROM `Ficha`
JOIN `Raça` ON `Ficha`.`Raça` = `Raça`.`NomeRaça`;

-- Seleciona informações de personagens, suas classes e raças
SELECT `Ficha`.`Nome`, `Ficha`.`Jogador`, `Classe`.`NomeClasse`, `Raça`.`NomeRaça`
FROM `Ficha`
JOIN `Classe` ON `Ficha`.`Classe` = `Classe`.`NomeClasse`
JOIN `Raça` ON `Ficha`.`Raça` = `Raça`.`NomeRaça`;

CREATE VIEW FichaCompleta AS
SELECT 
    Ficha.Nome AS NomePersonagem,
    Ficha.Jogador,
    Ficha.Nível,
    Ficha.Xp,
    Ficha.Idade,
    Ficha.Aparência,
    Ficha.Moedas,
    Ficha.Inspiração,
    Ficha.F0RÇA,
    Ficha.DESTREZA,
    Ficha.CONSTITUIÇÃO,
    Ficha.INTELIGENCIA,
    Ficha.SABEDORIA,
    Ficha.CARISMA,
    Ficha.PontosDeV,
    Ficha.ClasseDeArmadura,
    Ficha.PercepçãoPassiva,
    Ficha.Proficiências,
    Ficha.Tamanho,
    Ficha.LínguasConhecidas,
    Classe.NomeClasse,
    Classe.DadoDeVida,
    Raça.NomeRaça,
    Raça.AumentoDeAtributo1,
    Raça.AumentoDeAtributo2,
    Raça.Habilidades,
    Raça.VisãoNoEscuro,
    Raça.Deslocamento,
    Raça.Tendência,
    Raça.Proficiências AS ProficiênciasRaça
FROM 
    Ficha
JOIN 
    Classe ON Ficha.Classe = Classe.NomeClasse
JOIN 
    Raça ON Ficha.Raça = Raça.NomeRaça;

SELECT * FROM FichaCompleta;

 