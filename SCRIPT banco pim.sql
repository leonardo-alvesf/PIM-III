
/* =========================================================
   ADMINS
========================================================= */

INSERT INTO tb_admin (nome, email, senha_hash, data_cadastro, ativo)
VALUES
('Administrador Geral', 'admin1@sistema.com', '123456', GETDATE(), 1),
('Administrador Acadêmico', 'admin2@sistema.com', '123456', GETDATE(), 1),
('Administrador Suporte', 'admin3@sistema.com', '123456', GETDATE(), 1);


/* =========================================================
   TUTORES
========================================================= */

INSERT INTO tb_tutor (nome, email, senha_hash, telefone, data_cadastro, ativo)
VALUES
('Carlos Mendes', 'carlos.tutor@sistema.com', '123456', '12999990001', GETDATE(), 1),
('Ana Souza', 'ana.tutora@sistema.com', '123456', '12999990002', GETDATE(), 1),
('Rafael Lima', 'rafael.tutor@sistema.com', '123456', '12999990003', GETDATE(), 1);


/* =========================================================
   ALUNOS
========================================================= */

INSERT INTO tb_aluno (nome, email, senha_hash, telefone, data_cadastro, ativo)
VALUES
('João Pedro', 'joao.aluno@sistema.com', '123456', '12988880001', GETDATE(), 1),
('Maria Clara', 'maria.aluna@sistema.com', '123456', '12988880002', GETDATE(), 1),
('Lucas Ferreira', 'lucas.aluno@sistema.com', '123456', '12988880003', GETDATE(), 1);


/* =========================================================
   MATÉRIAS
========================================================= */

INSERT INTO tb_materia (nome_materia)
VALUES
('Engenharia de Software'),
('Programação Orientada a Objetos');


/* =========================================================
   CURSOS
========================================================= */

INSERT INTO tb_curso (id_materia, codigo_tutor_criador, nome_curso, ativo)
VALUES
(1, 1, 'Engenharia de Software', 1),
(2, 2, 'Programação Orientada a Objetos', 1);


/* =========================================================
   PROVAS
========================================================= */

INSERT INTO tb_prova (id_curso, titulo, descricao, quantidade_questoes, nota_minima, ativo)
VALUES
(2, 'Prova Engenharia de Software', 'Questões engenharia de software.', 10, 6.0, 1),

(3, 'Prova Programação Orientada a Objetos', 'Questões sobre Programação Orientada a Objetos.', 10, 6.0, 1);

/* =========================================================
   QUESTÕES PROVA 
========================================================= */

INSERT INTO tb_questao_prova (id_prova, numero_questao, enunciado)
VALUES
(2, 1,'Um analista foi contratado para desenvolver um sistema de pesquisa de DVDs em lojas
virtuais. O sistema deverá solicitar ao usuário um título de DVD, que será usado para realizar
a pesquisa nas bases de dados das lojas conveniadas. Ao detectar a disponibilidade do DVD
solicitado, o sistema armazenará temporariamente os dados das lojas (nome, preço, data
prevista para entrega do produto) e exibirá as informações ordenadas por preço. Após analisar
as informações, o cliente poderá efetuar a compra. O contratante deverá testar algumas
operações do sistema antes de ele ser finalizado. Há tempo suficiente para que o analista
atenda a essa solicitação e efetue eventuais modificações exigidas pelo contratante.
Com relação a essa situação, avalie as afirmativas a seguir quanto ao modelo de ciclo de vida.
I. O entendimento do sistema como um todo e a execução sequencial das fases sem retorno
produzem um sistema que pode ser validado pelo contratante.
II. A elaboração do protótipo pode ser utilizada para resolver dúvidas de comunicação, o que
aumenta os riscos de inclusão de novas funcionalidades não prioritárias.
III. A definição das restrições deve ser a segunda fase a ser realizada no desenvolvimento do
projeto, correspondendo à etapa de engenharia.
IV. Um processo iterativo permite que versões progressivas mais completas do sistema sejam
construídas e avaliadas.
É correto apenas o que se afirma em:'),

(2, 2,'Leia o código a seguir.
SUBROTINA xis()
 i = 0
 ENQUANTO (i < Gn) FACA
 i = i + 1
 SE (calc(i) <= Gn) ENTAO
 f1(i)
 SENAO
 f2(i)
 FIM SE
 FIM ENQUANTO
 Imprima("ok")
FIM SUBROTINA
Com relação ao código acima, considere que:
 a subrotina xis() faz parte de um programa;
 a variável i é local à subrotina xis();
 a variável Gn é global, e foi inicializada em outra parte do programa;
 o código-fonte disponível para a análise é apenas o da subrotina xis();
 o critério de aceitação do teste é: a subrotina xis() não entra em laço infinito.
Na situação apresentada, é correto
I. aplicar testes de caixa-branca às rotinas calc(), f1() e f2() e, em seguida, usar o
resultado para fazer um teste de mesa da subrotina xis().
II. aplicar testes de caixa-preta que forcem a chamada a xis() e depois medir a
porcentagem de sucesso da subrotina xis().
III. aplicar testes de caixa-preta isoladamente ao código objeto das subrotinas calc(), f1()
e f2() antes de aplicar um teste que envolva a subrotina xis().
Assinale a opção correta.'),

(2, 3,'O Rational Unified Process (RUP) é um processo de engenharia de software cujo objetivo é
assegurar a produção de software de alta qualidade, satisfazendo as necessidades dos
usuários no prazo e nos custos previstos. O RUP contém uma estrutura que pode ser adaptada
e estendida, pois é formado por duas estruturas principais, denominadas dimensões, que
representam os aspectos dinâmicos e estáticos do processo. O aspecto dinâmico é expresso
em ciclos, fases, iterações e marcos. O estático, por sua vez, contém as disciplinas, os fluxos,
os artefatos e os trabalhadores.
Com base na iteração do RUP, julgue as asserções e a relação proposta entre elas.
I. A cada iteração das fases do RUP, geram-se ou não artefatos de software.
PORQUE
II. Os artefatos produzidos dependem da ênfase que é dada a cada disciplina.
Assinale a opção correta.
'),

(2, 4,'Os alunos de uma disciplina deveriam escolher um sistema de média complexidade, contendo
no mínimo 100 funcionalidades, para ser modelado em UML e codificado em uma linguagem
orientada a objetos. Um dos grupos de alunos estabeleceu a seguinte estratégia para
identificação e seleção do sistema.
I. Cada integrante do grupo deveria criar um nickname (apelido) em um software de chat.
II. O grupo deveria se reunir em um horário predeterminado.
III.Durante o chat, os seguintes procedimentos deveriam ser realizados:
• cada integrante deveria sugerir um ou mais sistemas e justificar sua escolha, e não poderia
criticar as ideias dos outros;
• à medida que as ideias fossem digitadas, o líder deveria copiá-las para um editor de texto
e controlar o tempo de sugestão;
• quando o limite de tempo fosse atingido, o líder disponibilizaria todas as sugestões para
serem analisadas pelo grupo;
• as 5 melhores ideias seriam selecionadas e colocadas em votação para a escolha da melhor
ideia, segundo critérios predefinidos.
Nessa situação, a estratégia utilizada pelo grupo de alunos é uma adaptação da técnica de
levantamento e elicitação de requisitos denominada'),

(2, 5,'Uma indústria de alimentos compra sementes de vários fornecedores. No recebimento das
cargas, as sementes passam por uma operação de classificação por cor, em uma esteira
adquirida do fabricante MAQ, equipada com sensores e software de processamento de
imagens. Na etapa seguinte do processo, as sementes são separadas em lotes, pelo critério
de tamanho, e são, então, empacotadas. A separação dos lotes é realizada por um mecanismo
robótico, controlado remotamente por um funcionário por meio de uma interface gráfica. Pelo
fato de o mecanismo robótico sofrer contínuo desgaste, ele necessita ser substituído a cada
1.000 horas de uso. Durante a última troca, em razão da indisponibilidade do equipamento
produzido pela empresa MAQ, a indústria instalou, com sucesso, um equipamento robótico
similar.
Considerando o processo descrito, julgue os itens a seguir, relacionados aos fatores de
qualidade.
I. As operações de classificação e separação de sementes se interrelacionam e não podem
falhar, pois essa falha acarretaria prejuízos. O atributo de qualidade correspondente a
essas operações, e que deve ser observado pelo software, é a interoperabilidade.
II. Caso o responsável pela instalação do sistema robotizado não tenha encontrado
dificuldade em fazê-lo comunicar-se com o equipamento de outra marca, é correto
concluir que o sistema que controla o robô é portável.
III. A maneira como ocorre a interação com o sistema computacional sugere que alguns
requisitos, como ergonomia, sejam observados na interface. Por isso, é correto concluir
que o software utilizado pela indústria deve contemplar o fator denominado
usabilidade.
Assinale a opção correta'),

(2, 6,'No Scrum, o principal objetivo da Sprint é:'),

(2, 7,'Qual modelo é mais adequado quando os requisitos mudam frequentemente?'),

(2, 8,'O teste de caixa-preta avalia:'),

(2, 9,'A UML é utilizada principalmente para:'),

(2, 10,'Requisito funcional é:');

INSERT INTO tb_alternativa_prova (id_questao, letra_questao, texto_alternativa, correta)
VALUES
(1, 'A', 'I e II.', 0),
(1, 'B', 'I e III.', 0),
(1, 'C', 'II e III.', 0),
(1, 'D', 'II e IV.', 1),
(1, 'E', 'III e IV.', 0),

(2, 'A', 'Apenas um item está certo.', 1),
(2, 'B', 'Apenas os itens I e II estão certos.', 0),
(2, 'C', 'Apenas os itens I e III estão certos.', 0),
(2, 'D', 'Apenas os itens II e III estão certos.', 0),
(2, 'E', 'Todos os itens estão certos.', 0),

(3, 'A', 'As duas asserções são proposições verdadeiras, e a segunda justifica a primeira.', 0),
(3, 'B', 'As duas asserções são proposições verdadeiras, e a segunda não justifica a primeira.', 0),
(3, 'C', 'A primeira asserção é uma proposição verdadeira, e a segunda é uma proposição falsa.', 0),
(3, 'D', 'A primeira asserção é uma proposição falsa, e a segunda é uma proposição verdadeira.', 1),
(3, 'E', 'As duas asserções são proposições falsas.', 0),

(4, 'A', 'joint application design.', 0),
(4, 'B', 'perfomance informação/dados economia controle eficiência e serviços.', 0),
(4, 'C', 'facilitaded application specification techniques.', 0),
(4, 'D', 'entrevista.', 0),
(4, 'E', 'brainstorming.', 1),

(5, 'A', 'Apenas um item está certo.', 1),
(5, 'B', 'Apenas os itens I e II estão certos.', 0),
(5, 'C', 'Apenas os itens I e III estão certos.', 0),
(5, 'D', 'Apenas os itens II e III estão certos.', 0),
(5, 'E', 'Todos os itens estão certos.', 0),

(6, 'A', 'Criar documentação completa do sistema.', 0),
(6, 'B', 'Corrigir apenas erros do sistema.', 0),
(6, 'C', 'Entregar um incremento funcional do produto.', 1),
(6, 'D', 'Realizar apenas reuniões.', 0),
(6, 'E', 'Substituir testes automatizados.', 0),

(7, 'A', 'Cascata.', 0),
(7, 'B', 'Espiral.', 0),
(7, 'C', 'Incremental Ágil.', 1),
(7, 'D', 'Sequencial Linear.', 0),
(7, 'E', 'Big Bang.', 0),

(8, 'A', 'Estrutura interna do código.', 0),
(8, 'B', 'Fluxo de dados do algoritmo.', 0),
(8, 'C', 'Requisitos funcionais do sistema.', 1),
(8, 'D', 'Complexidade ciclomática.', 0),
(8, 'E', 'Estrutura das classes.', 0),

(9, 'A', 'Compilar programas.', 0),
(9, 'B', 'Modelar sistemas de software.', 1),
(9, 'C', 'Executar banco de dados.', 0),
(9, 'D', 'Criar antivírus.', 0),
(9, 'E', 'Gerenciar redes.', 0),

(10, 'A', 'Restrição tecnológica do sistema.', 0),
(10, 'B', 'Característica visual apenas.', 0),
(10, 'C', 'Função que o sistema deve executar.', 1),
(10, 'D', 'Tempo de resposta da aplicação.', 0),
(10, 'E', 'Recurso opcional sem importância.', 0);

INSERT INTO tb_questao_prova (id_prova, numero_questao, enunciado)
VALUES

(3, 1, 'Uma pizzaria fez uma ampliação de suas instalações e o gerente aproveitou para melhorar o
sistema informatizado, que era limitado e não atendia a todas as funções necessárias. O
gerente, então, contratou uma empresa para ampliar o software. No desenvolvimento do novo
sistema, a empresa aproveitou partes do sistema antigo e estendeu os componentes de
maneira a usar código validado, acrescentando as novas funções solicitadas.
Que conceito de orientação a objetos está descrito na situação hipotética acima?'),

(3, 2, 'Uma instituição de auxílio a desabrigados tem a preocupação de fornecer uma alimentação
equilibrada a seus pensionistas. Para atingir esse objetivo, decidiu empregar um sistema
informatizado e contratou um analista para projetá-lo. O analista, que deveria empregar UML
na modelagem do sistema, recebeu as informações a seguir acerca das refeições.
Café da manhã: dois tipos de carboidrato, duas vitaminas e duas proteínas.
Almoço: dois tipos de carboidrato e de proteínas, quatro tipos de vitamina e um tipo de lipídio.
Jantar: um tipo de carboidrato, uma proteína e uma vitamina.
Cada tipo de alimento deve ser acompanhado por seu nome, sua porção recomendável, por
refeição, e seu valor calórico, por porção.
Considerando as necessidades da instituição no que se refere ao cardápio diário e a aspectos
da modelagem conceitual com UML, julgue os itens a seguir, acerca da classe Refeição.
I. Para o cálculo da TMB, são precondições que a idade seja um valor maior do que 30 anos e
que seja relacionada uma das descrições da tabela II para o valor de FA.
II. Essa classe tem um método denominado montarCardápioDiário() que será sobrescrito nas subclasses.
III. Suas subclasses não implementam o método para calcular a quantidade de calorias,
utilizando a implementação já definida na classe pai.
IV. Essa classe possui associações um-para-um com a classe Pensionista e agregação com
a classe Alimento.
V. O conceito de acoplamento é um critério importante durante a modelagem da classe
Refeição, pois diminui a quantidade de seus relacionamentos, o que contribui para o seu reúso.
São corretos apenas os itens:'),

(3, 3, 'Encapsulamento significa:'),

(3, 4, 'Qual conceito permite que uma classe utilize características de outra?'),

(3, 5, 'Polimorfismo permite:'),

(3, 6, 'Em Java, qual palavra-chave é utilizada para indicar herança entre classes?'),

(3, 7, 'Uma classe abstrata:'),

(3, 8, 'O relacionamento em que um objeto possui ou utiliza outro objeto é conhecido como:'),

(3, 9, 'Na programação orientada a objetos, uma classe pode ser entendida como:'),

(3, 10, 'O objeto é criado a partir de uma classe por meio do processo chamado:');

INSERT INTO tb_alternativa_prova (id_questao, letra_questao, texto_alternativa, correta)
VALUES

(11, 'A', 'Sobrecarga.', 0),
(11, 'B', 'Herança.', 1),
(11, 'C', 'Sobreposição.', 0),
(11, 'D', 'Abstração.', 0),
(11, 'E', 'Mensagem.', 0),

(12, 'A', 'I e II.', 0),
(12, 'B', 'I e IV.', 0),
(12, 'C', 'II e III.', 0),
(12, 'D', 'III e V.', 0),
(12, 'E', 'IV e V.', 0),

(13, 'A', 'Herdar métodos de outra classe.', 0),
(13, 'B', 'Ocultar detalhes internos do objeto.', 1),
(13, 'C', 'Criar múltiplas subclasses.', 0),
(13, 'D', 'Executar vários métodos simultaneamente.', 0),
(13, 'E', 'Repetir código em classes diferentes.', 0),

(14, 'A', 'Polimorfismo.', 0),
(14, 'B', 'Abstração.', 0),
(14, 'C', 'Herança.', 1),
(14, 'D', 'Encapsulamento.', 0),
(14, 'E', 'Interface.', 0),

(15, 'A', 'Eliminar objetos da memória.', 0),
(15, 'B', 'Alterar o hardware do sistema.', 0),
(15, 'C', 'Utilizar métodos com diferentes comportamentos.', 1),
(15, 'D', 'Executar apenas funções privadas.', 0),
(15, 'E', 'Impedir reutilização de código.', 0),

(16, 'A', 'implement.', 0),
(16, 'B', 'inherit.', 0),
(16, 'C', 'extends.', 1),
(16, 'D', 'superClass.', 0),
(16, 'E', 'import.', 0),

(17, 'A', 'Pode ser instanciada normalmente.', 0),
(17, 'B', 'Não pode possuir métodos.', 0),
(17, 'C', 'Serve como modelo para subclasses.', 1),
(17, 'D', 'Elimina o uso de herança.', 0),
(17, 'E', 'Só existe em banco de dados.', 0),

(18, 'A', 'Herança.', 0),
(18, 'B', 'Associação.', 1),
(18, 'C', 'Sobrecarga.', 0),
(18, 'D', 'Polimorfismo.', 0),
(18, 'E', 'Interface.', 0),

(19, 'A', 'Um molde para criar objetos.', 1),
(19, 'B', 'Um banco de dados relacional.', 0),
(19, 'C', 'Um tipo de sistema operacional.', 0),
(19, 'D', 'Um arquivo executável obrigatório.', 0),
(19, 'E', 'Uma linguagem de programação.', 0),

(20, 'A', 'Compilação.', 0),
(20, 'B', 'Instanciação.', 1),
(20, 'C', 'Indexação.', 0),
(20, 'D', 'Normalização.', 0),
(20, 'E', 'Criptografia.', 0);


/* =========================================================
   ALUNO PROVA
========================================================= */

INSERT INTO tb_aluno_prova (id_aluno, id_prova, data_inicio, quantidade_acertadas, nota)
VALUES
(1, 3, GETDATE(), 7, 7),
(1, 2, GETDATE(), 5, 5),

(2, 3, GETDATE(), 8, 8),
(2, 2, GETDATE(), 0, 0),

(3, 3, GETDATE(), 10, 10),
(3, 2, GETDATE(), 1, 1);