USE	exe_Locadora

--DML 

INSERT INTO Empresa	(Nome)
VALUES ('Locadora');

INSERT INTO Cliente (Nome, Cpf)
VALUES ('Gary', 555763973-9), ('Rafaela', 176982918-1), ('Pano', 876987652-0);

INSERT INTO Marca	(Nome)
VALUES ('Audi'), ('BMW'), ('Mercedes'), ('Nissan');

INSERT INTO Modelo	(Nome, IdMarca)
VALUES ('A3', 1), ('X6', 2), ('GLA230', 3), ('Livina', 4);

INSERT INTO Veiculo (Placa, IdEmpresa, IdModelo)
VALUES ('FHJ-8699', 1, 1), ('GNH-9980', 1, 2), ('GTU-5578', 2, 3), ('FJK-8271', 2, 4);

INSERT INTO Aluguel (DataInicio, DataFim, IdCliente, IdVeiculo)
VALUES ('20/01/2020', '23/01/2020', 2, 1), ('21/01/2020', '22/01/2020', 3, 3), ('21/01/2020', '23/01/2020', 3, 2);



