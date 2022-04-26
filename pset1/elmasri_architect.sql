<?xml version="1.0" encoding="UTF-8"?>
<architect-project version="1.0" appversion="1.0.9">
 <project-name>POWER ARCHITECT FINAL PRONTO</project-name>
 <print-settings numCopies="1" zoom="1.0" pageNumbersPrinted="true" orientation="1" paperWidth="612.0" paperHeight="792.0" leftBorder="50.0" rightBorder="50.0" topBorder="50.0" bottomBorder="50.0" />
 <project-data-sources>
  <data-source id="DS0">
   <property key="Logical" value="PlayPen Database" />
  </data-source>
 </project-data-sources>
 <source-databases>
 </source-databases>
 <target-database id="ppdb" dbcs-ref="DS0">
  <table id="TAB1" populated="true" UUID="01bbf1be-d0e9-4798-bbd0-c1a817c3539b" name="funcionario" objectType="TABLE" physicalName="funcionario" >
   <remarks>Tabela que armazena as informações dos funcionários</remarks>
   <folder id="FOLTAB11" populated="true" name="Columns" physicalName="Columns" type="1">
    <column id="COL2" populated="true" UUID="710ca69b-bff7-4d61-ab94-a36693b043bc" autoIncrement="false" autoIncrementSequenceName="funcionario_cpf_seq" defaultValue="" name="cpf" nullable="0" physicalName="cpf" precision="11" primaryKeySeq="0" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="1" userDefinedTypeUUID="67ddc63f-5541-4dd1-9236-632d9d155e80" >
     <remarks>CPF do funcionário
</remarks>
    </column>
    <column id="COL3" populated="true" UUID="de0c0178-41b8-4e10-b1f7-deecd84d840c" autoIncrement="false" autoIncrementSequenceName="funcionario_primeiro_nome_seq" defaultValue="" name="primeiro_nome" nullable="0" physicalName="primeiro_nome" precision="15" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="12" userDefinedTypeUUID="831ac2d4-0e65-47ec-a0b7-62b7f6b8760a" >
     <remarks>Primeiro nome do funcionário</remarks>
    </column>
    <column id="COL4" populated="true" UUID="92a95f39-ad3a-4701-84db-3cbbbd04a185" autoIncrement="false" autoIncrementSequenceName="funcionario_nome_meio_seq" defaultValue="" name="nome_meio" nullable="1" physicalName="nome_meio" precision="1" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="1" userDefinedTypeUUID="67ddc63f-5541-4dd1-9236-632d9d155e80" >
     <remarks>Inicial do nome do meio</remarks>
    </column>
    <column id="COL5" populated="true" UUID="60d00c14-623a-481c-8304-00247e2bfdaa" autoIncrement="false" autoIncrementSequenceName="funcionario_ultimo_nome_seq" defaultValue="" name="ultimo_nome" nullable="0" physicalName="ultimo_nome" precision="15" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="12" userDefinedTypeUUID="831ac2d4-0e65-47ec-a0b7-62b7f6b8760a" >
     <remarks>Sobrenome do funcionário</remarks>
    </column>
    <column id="COL6" populated="true" UUID="9f3b1cad-1862-44f4-add3-e8727dd35450" autoIncrement="false" autoIncrementSequenceName="funcionario_data_nascimento_seq" defaultValue="" name="data_nascimento" nullable="1" physicalName="data_nascimento" precision="0" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="91" userDefinedTypeUUID="ee349be3-6af2-46e1-b305-975f5354b009" >
     <remarks></remarks>
    </column>
    <column id="COL7" populated="true" UUID="629fdb52-7e37-4dce-b348-d870e989125a" autoIncrement="false" autoIncrementSequenceName="funcionario_endereco_seq" defaultValue="" name="endereco" nullable="1" physicalName="endereco" precision="50" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="12" userDefinedTypeUUID="831ac2d4-0e65-47ec-a0b7-62b7f6b8760a" >
     <remarks>Endereço do funcionário</remarks>
    </column>
    <column id="COL8" populated="true" UUID="a8d42cb0-c74f-41f5-b265-743572358c72" autoIncrement="false" autoIncrementSequenceName="funcionario_sexo_seq" defaultValue="" name="sexo" nullable="1" physicalName="sexo" precision="1" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="1" userDefinedTypeUUID="67ddc63f-5541-4dd1-9236-632d9d155e80" >
     <remarks>Sexo do funcionário</remarks>
    </column>
    <column id="COL9" populated="true" UUID="b56bb5b2-d2d9-4b34-95c5-a979ec15a392" autoIncrement="false" autoIncrementSequenceName="funcionario_salario_seq" defaultValue="" name="salario" nullable="1" physicalName="salario" precision="10" referenceCount="1" scale="2" sourceDataTypeName="UserDefinedSQLType" type="3" userDefinedTypeUUID="cc1304ea-628a-4fc5-a84a-06ba14759152" >
     <remarks>Salário do funcionário</remarks>
    </column>
    <column id="COL10" populated="true" UUID="9196c9ca-d768-44e5-84ff-f3d1260abdff" autoIncrement="false" autoIncrementSequenceName="funcionario_cpf_supervisor_seq" defaultValue="" name="cpf_supervisor" nullable="0" physicalName="cpf_supervisor" precision="11" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="1" userDefinedTypeUUID="67ddc63f-5541-4dd1-9236-632d9d155e80" >
     <remarks>CPF do supervisor</remarks>
    </column>
    <column id="COL11" populated="true" UUID="9360cd88-edf7-478c-93f0-093fe7ae0e99" autoIncrement="false" autoIncrementSequenceName="funcionario_numero_departamento_seq" defaultValue="" name="numero_departamento" nullable="0" physicalName="numero_departamento" precision="0" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="4" userDefinedTypeUUID="63b011c7-c81f-4c75-8271-632b3c87f727" >
     <remarks>Numéro do departamento do funcionário</remarks>
    </column>
    </folder>
    <folder id="FOLTAB13" populated="true" name="Exported Keys" physicalName="Exported Keys" type="3">
    </folder>
    <folder id="FOLTAB12" populated="true" name="Imported Keys" physicalName="Imported Keys" type="2">
    </folder>
    <folder id="FOLTAB14" populated="true" name="Indices" physicalName="Indices" type="4">
    <index id="IDX12" populated="true" UUID="2acd3d3f-dfed-4685-969f-9d9fecf92f95" clustered="false" name="funcionario2" physicalName="funcionario2" primaryKeyIndex="true" unique="false" >
     <index-column id="IDC13" populated="true" UUID="43d20d14-c3b2-4d05-8dac-51b8269fe60d" ascendingOrDescending="UNSPECIFIED" column-ref="COL2" name="cpf" physicalName="cpf" />
    </index>
   </folder>
  </table>
  <table id="TAB14" populated="true" UUID="218f1cbc-403e-47b4-a4ab-fbd1b278f246" name="dependente" objectType="TABLE" physicalName="dependente" >
   <remarks>Tabela que armazena as informações dos dependentes dos funcionários</remarks>
   <folder id="FOLTAB141" populated="true" name="Columns" physicalName="Columns" type="1">
    <column id="COL15" populated="true" UUID="6f65c88d-d862-45a1-9e7e-8dc665cba4a0" autoIncrement="false" autoIncrementSequenceName="dependente_cpf_funcionario_seq" defaultValue="" name="cpf_funcionario" nullable="0" physicalName="cpf_funcionario" precision="11" primaryKeySeq="0" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="1" userDefinedTypeUUID="67ddc63f-5541-4dd1-9236-632d9d155e80" >
     <remarks>CPF do funcionário</remarks>
    </column>
    <column id="COL16" populated="true" UUID="99aa55f7-df31-487f-8053-8bfd891d1b4b" autoIncrement="false" autoIncrementSequenceName="dependente_nome_dependente_seq" defaultValue="" name="nome_dependente" nullable="0" physicalName="nome_dependente" precision="15" primaryKeySeq="1" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="12" userDefinedTypeUUID="831ac2d4-0e65-47ec-a0b7-62b7f6b8760a" >
     <remarks>Nome do dependente.</remarks>
    </column>
    <column id="COL17" populated="true" UUID="4a930a59-41d0-4675-aa19-49a5411b4cf6" autoIncrement="false" autoIncrementSequenceName="dependente_sexo_seq" defaultValue="" name="sexo" nullable="1" physicalName="sexo" precision="1" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="1" userDefinedTypeUUID="67ddc63f-5541-4dd1-9236-632d9d155e80" >
     <remarks>Sexo do dependente</remarks>
    </column>
    <column id="COL18" populated="true" UUID="8dd697ac-099e-4b76-8b02-07887e2d7b8a" autoIncrement="false" autoIncrementSequenceName="dependente_data_nascimento_seq" defaultValue="" name="data_nascimento" nullable="1" physicalName="data_nascimento" precision="0" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="91" userDefinedTypeUUID="ee349be3-6af2-46e1-b305-975f5354b009" >
     <remarks>Data de nascimento do dependente</remarks>
    </column>
    <column id="COL19" populated="true" UUID="41f4e801-e41f-45ed-a202-f6c38deb053b" autoIncrement="false" autoIncrementSequenceName="dependente_parentesco_seq" defaultValue="" name="parentesco" nullable="1" physicalName="parentesco" precision="15" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="12" userDefinedTypeUUID="831ac2d4-0e65-47ec-a0b7-62b7f6b8760a" >
     <remarks>Descrição do parentesco do dependente com o funcionário</remarks>
    </column>
    </folder>
    <folder id="FOLTAB143" populated="true" name="Exported Keys" physicalName="Exported Keys" type="3">
    </folder>
    <folder id="FOLTAB142" populated="true" name="Imported Keys" physicalName="Imported Keys" type="2">
    </folder>
    <folder id="FOLTAB144" populated="true" name="Indices" physicalName="Indices" type="4">
    <index id="IDX20" populated="true" UUID="b8acd5ef-1e46-443e-a23f-960ccf8c9a74" clustered="false" name="dependente2" physicalName="dependente2" primaryKeyIndex="true" unique="false" >
     <index-column id="IDC21" populated="true" UUID="473c7621-6f36-459c-9fed-7065c5c13df9" ascendingOrDescending="UNSPECIFIED" column-ref="COL15" name="cpf_funcionario" physicalName="cpf_funcionario" />
     <index-column id="IDC22" populated="true" UUID="3e8d95b2-d8b7-48f4-beba-4c6eccac0fc9" ascendingOrDescending="UNSPECIFIED" column-ref="COL16" name="nome_dependente" physicalName="nome_dependente" />
    </index>
   </folder>
  </table>
  <table id="TAB23" populated="true" UUID="e6524c5f-54ca-4c6d-a73b-edc683914585" name="trabalha_em" objectType="TABLE" physicalName="trabalha_em" >
   <remarks>Tabela para armazenar quais funcionários trabalham em quais projetos</remarks>
   <folder id="FOLTAB231" populated="true" name="Columns" physicalName="Columns" type="1">
    <column id="COL24" populated="true" UUID="167d004b-d296-4fa2-b069-642d1686cc8a" autoIncrement="false" autoIncrementSequenceName="trabalha_em_cpf_funcionario_seq" defaultValue="" name="cpf_funcionario" nullable="0" physicalName="cpf_funcionario" precision="11" primaryKeySeq="0" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="1" userDefinedTypeUUID="67ddc63f-5541-4dd1-9236-632d9d155e80" >
     <remarks>CPF do funcionário</remarks>
    </column>
    <column id="COL25" populated="true" UUID="7aba9ca1-11eb-4443-975e-2ba938443cfc" autoIncrement="false" autoIncrementSequenceName="trabalha_em_numero_projeto_seq" defaultValue="" name="numero_projeto" nullable="0" physicalName="numero_projeto" precision="0" primaryKeySeq="1" referenceCount="2" scale="0" sourceDataTypeName="UserDefinedSQLType" type="4" userDefinedTypeUUID="63b011c7-c81f-4c75-8271-632b3c87f727" >
     <remarks>Número do projeto</remarks>
    </column>
    <column id="COL26" populated="true" UUID="70003434-4ca7-4d9c-9bc2-7b650a7867e1" autoIncrement="false" autoIncrementSequenceName="trabalha_em_horas_seq" defaultValue="" name="horas" nullable="0" physicalName="horas" precision="3" referenceCount="1" scale="1" sourceDataTypeName="UserDefinedSQLType" type="3" userDefinedTypeUUID="cc1304ea-628a-4fc5-a84a-06ba14759152" >
     <remarks>Horas trabalhadas pelo funcionário neste projeto</remarks>
    </column>
    </folder>
    <folder id="FOLTAB233" populated="true" name="Exported Keys" physicalName="Exported Keys" type="3">
    </folder>
    <folder id="FOLTAB232" populated="true" name="Imported Keys" physicalName="Imported Keys" type="2">
    </folder>
    <folder id="FOLTAB234" populated="true" name="Indices" physicalName="Indices" type="4">
    <index id="IDX27" populated="true" UUID="aad04b31-c3f7-447d-80b5-0f5bc3a71b80" clustered="false" name="trabalha_em2" physicalName="trabalha_em2" primaryKeyIndex="true" unique="false" >
     <index-column id="IDC28" populated="true" UUID="b3483b1e-a849-45fe-acb4-81dacd57d5b3" ascendingOrDescending="UNSPECIFIED" column-ref="COL24" name="cpf_funcionario" physicalName="cpf_funcionario" />
     <index-column id="IDC29" populated="true" UUID="4721e2a2-6326-480c-88f8-1a750ce062a4" ascendingOrDescending="UNSPECIFIED" column-ref="COL25" name="numero_projeto" physicalName="numero_projeto" />
    </index>
   </folder>
  </table>
  <table id="TAB30" populated="true" UUID="ca0db83d-01b7-4608-ae80-42775f304ddd" name="projeto" objectType="TABLE" physicalName="projeto" >
   <remarks>Tabela que armazena as informações sobre os projetos dos departamentos</remarks>
   <folder id="FOLTAB301" populated="true" name="Columns" physicalName="Columns" type="1">
    <column id="COL31" populated="true" UUID="5be70ca8-ee4a-4c3e-bf6b-f8526c4205dd" autoIncrement="false" autoIncrementSequenceName="projeto_numero_projeto_seq" defaultValue="" name="numero_projeto" nullable="0" physicalName="numero_projeto" precision="0" primaryKeySeq="0" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="4" userDefinedTypeUUID="63b011c7-c81f-4c75-8271-632b3c87f727" >
     <remarks>Número do projeto</remarks>
    </column>
    <column id="COL32" populated="true" UUID="c9d2d8f0-4a1b-4fe4-867c-6c42daaa228d" autoIncrement="false" autoIncrementSequenceName="projeto_nome_projeto_seq" defaultValue="" name="nome_projeto" nullable="0" physicalName="nome_projeto" precision="15" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="12" userDefinedTypeUUID="831ac2d4-0e65-47ec-a0b7-62b7f6b8760a" >
     <remarks>Nome do projeto</remarks>
    </column>
    <column id="COL33" populated="true" UUID="248803c2-a844-4e16-ac90-d3fa6892fd62" autoIncrement="false" autoIncrementSequenceName="projeto_local_projeto_seq" defaultValue="" name="local_projeto" nullable="1" physicalName="local_projeto" precision="15" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="12" userDefinedTypeUUID="831ac2d4-0e65-47ec-a0b7-62b7f6b8760a" >
     <remarks>Local do projeto</remarks>
    </column>
    <column id="COL34" populated="true" UUID="913f4a1a-2dc9-4ec2-a776-b7a6b90a1286" autoIncrement="false" autoIncrementSequenceName="projeto_numero_departamento_seq" defaultValue="" name="numero_departamento" nullable="0" physicalName="numero_departamento" precision="0" referenceCount="2" scale="0" sourceDataTypeName="UserDefinedSQLType" type="4" userDefinedTypeUUID="63b011c7-c81f-4c75-8271-632b3c87f727" >
     <remarks>Número do departamento</remarks>
    </column>
    </folder>
    <folder id="FOLTAB303" populated="true" name="Exported Keys" physicalName="Exported Keys" type="3">
    </folder>
    <folder id="FOLTAB302" populated="true" name="Imported Keys" physicalName="Imported Keys" type="2">
    </folder>
    <folder id="FOLTAB304" populated="true" name="Indices" physicalName="Indices" type="4">
    <index id="IDX35" populated="true" UUID="f6cd075a-a681-412d-8207-2c6eaecf95db" clustered="false" name="projeto2" physicalName="projeto2" primaryKeyIndex="true" unique="false" >
     <index-column id="IDC36" populated="true" UUID="9da5b9d4-1aba-4dc8-adff-f875ccfe87b6" ascendingOrDescending="UNSPECIFIED" column-ref="COL31" name="numero_projeto" physicalName="numero_projeto" />
    </index>
    <index id="IDX37" populated="true" UUID="cf9d2df7-a550-4bd0-96fc-81605bae56c9" clustered="false" name="projeto_idx" physicalName="projeto_idx" primaryKeyIndex="false" unique="true" >
     <index-column id="IDC38" populated="true" UUID="8ae8c389-f7fb-47ef-92ac-b40a8eb44f2e" ascendingOrDescending="UNSPECIFIED" column-ref="COL32" name="nome_projeto" physicalName="nome_projeto" />
    </index>
   </folder>
  </table>
  <table id="TAB39" populated="true" UUID="582152c4-93a3-4a0a-ae83-ed26d41a1eda" name="departamento" objectType="TABLE" physicalName="departamento" >
   <remarks>Tabela que armazena as informações dos departamentos</remarks>
   <folder id="FOLTAB391" populated="true" name="Columns" physicalName="Columns" type="1">
    <column id="COL40" populated="true" UUID="7a672303-6505-4d25-885f-527a9844e565" autoIncrement="false" autoIncrementSequenceName="departamento_numero_departamento_seq" defaultValue="" name="numero_departamento" nullable="0" physicalName="numero_departamento" precision="0" primaryKeySeq="0" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="4" userDefinedTypeUUID="63b011c7-c81f-4c75-8271-632b3c87f727" >
     <remarks>Número do departamento.</remarks>
    </column>
    <column id="COL41" populated="true" UUID="57115976-7b2d-4b55-a05a-e46537ce6be9" autoIncrement="false" autoIncrementSequenceName="departamento_nome_departamento_seq" defaultValue="" name="nome_departamento" nullable="0" physicalName="nome_departamento" precision="15" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="12" userDefinedTypeUUID="831ac2d4-0e65-47ec-a0b7-62b7f6b8760a" >
     <remarks>Nome do departamento.</remarks>
    </column>
    <column id="COL42" populated="true" UUID="9ebe5de9-f7ee-40f3-b459-7899922eaa90" autoIncrement="false" autoIncrementSequenceName="departamento_cpf_gerente_seq" defaultValue="" name="cpf_gerente" nullable="0" physicalName="cpf_gerente" precision="11" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="1" userDefinedTypeUUID="67ddc63f-5541-4dd1-9236-632d9d155e80" >
     <remarks>CPF do gerente do departamento.</remarks>
    </column>
    <column id="COL43" populated="true" UUID="3e4d4310-e8e6-4472-9bad-67c95069f040" autoIncrement="false" autoIncrementSequenceName="departamento_data_inicio_gerente_seq" defaultValue="" name="data_inicio_gerente" nullable="1" physicalName="data_inicio_gerente" precision="0" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="91" userDefinedTypeUUID="ee349be3-6af2-46e1-b305-975f5354b009" >
     <remarks>Data do início do gerente no departamento</remarks>
    </column>
    </folder>
    <folder id="FOLTAB393" populated="true" name="Exported Keys" physicalName="Exported Keys" type="3">
    </folder>
    <folder id="FOLTAB392" populated="true" name="Imported Keys" physicalName="Imported Keys" type="2">
    </folder>
    <folder id="FOLTAB394" populated="true" name="Indices" physicalName="Indices" type="4">
    <index id="IDX44" populated="true" UUID="bde7ec46-5cdf-4c2c-b5df-dfdff38bf78e" clustered="false" name="departamento2" physicalName="departamento2" primaryKeyIndex="true" unique="false" >
     <index-column id="IDC45" populated="true" UUID="c8eef806-b80e-44b6-b506-94fe24aa71e2" ascendingOrDescending="UNSPECIFIED" column-ref="COL40" name="numero_departamento" physicalName="numero_departamento" />
    </index>
    <index id="IDX46" populated="true" UUID="295ac3a0-0c84-424f-8c1a-a6696a3bcf49" clustered="false" name="departamento_idx" physicalName="departamento_idx" primaryKeyIndex="false" unique="true" >
     <index-column id="IDC47" populated="true" UUID="6c9935d8-37ed-46a7-8262-54c2f5f37bf5" ascendingOrDescending="UNSPECIFIED" column-ref="COL41" name="nome_departamento" physicalName="nome_departamento" />
    </index>
   </folder>
  </table>
  <table id="TAB48" populated="true" UUID="799681f7-03ad-4a0a-9ad1-8511f51dba0f" name="localizacoes_departamento" objectType="TABLE" physicalName="localizacoes_departamento" >
   <remarks>Tabel aque armazena as possíveis localizações dos departamentos</remarks>
   <folder id="FOLTAB481" populated="true" name="Columns" physicalName="Columns" type="1">
    <column id="COL49" populated="true" UUID="3d69f9e3-f848-48bc-be93-9058bd5d1478" autoIncrement="false" autoIncrementSequenceName="localizacoes_departamento_numero_departamento_seq" defaultValue="" name="numero_departamento" nullable="0" physicalName="numero_departamento" precision="0" primaryKeySeq="0" referenceCount="2" scale="0" sourceDataTypeName="UserDefinedSQLType" type="4" userDefinedTypeUUID="63b011c7-c81f-4c75-8271-632b3c87f727" >
     <remarks>Número do departamento</remarks>
    </column>
    <column id="COL50" populated="true" UUID="7cde278a-0ea9-446b-9541-0b4e44ca679a" autoIncrement="false" autoIncrementSequenceName="localizacoes_departamento_local_seq" defaultValue="" name="local" nullable="0" physicalName="local" precision="15" primaryKeySeq="1" referenceCount="1" scale="0" sourceDataTypeName="UserDefinedSQLType" type="12" userDefinedTypeUUID="831ac2d4-0e65-47ec-a0b7-62b7f6b8760a" >
     <remarks>Localização do departamento</remarks>
    </column>
    </folder>
    <folder id="FOLTAB483" populated="true" name="Exported Keys" physicalName="Exported Keys" type="3">
    </folder>
    <folder id="FOLTAB482" populated="true" name="Imported Keys" physicalName="Imported Keys" type="2">
    </folder>
    <folder id="FOLTAB484" populated="true" name="Indices" physicalName="Indices" type="4">
    <index id="IDX51" populated="true" UUID="e5b0f07a-5ea0-4d95-a9c9-fe4cf1daae01" clustered="false" name="localizacoes_departamento2" physicalName="localizacoes_departamento2" primaryKeyIndex="true" unique="false" >
     <index-column id="IDC52" populated="true" UUID="08131e95-0e6d-45ed-b650-1c86bb7aa018" ascendingOrDescending="UNSPECIFIED" column-ref="COL49" name="numero_departamento" physicalName="numero_departamento" />
     <index-column id="IDC53" populated="true" UUID="1797306b-c6f2-42ec-a865-e4f5402d4cbd" ascendingOrDescending="UNSPECIFIED" column-ref="COL50" name="local" physicalName="local" />
    </index>
   </folder>
  </table>
  <relationships>
   <relationship id="REL54" populated="true" UUID="dbc0a788-864f-4aed-9935-c25032d72a9e" deferrability="7" deleteRule="3" fk-table-ref="TAB1" fkCardinality="7" identifying="false" name="funcionario_funcionario_fk" physicalName="funcionario_funcionario_fk" pk-table-ref="TAB1" pkCardinality="2" updateRule="3" >
    <column-mapping id="CMP55" populated="true" UUID="4b994a55-f4b4-420a-b3fd-63006f17c06c" fk-column-ref="COL10" name="Column Mapping" physicalName="Column Mapping" pk-column-ref="COL2" />
   </relationship>
   <relationship id="REL56" populated="true" UUID="835158c9-c0a7-4c1e-ada5-46cfdd48cd4e" deferrability="7" deleteRule="3" fk-table-ref="TAB14" fkCardinality="7" identifying="true" name="funcionario_dependente_fk" physicalName="funcionario_dependente_fk" pk-table-ref="TAB1" pkCardinality="2" updateRule="3" >
    <column-mapping id="CMP57" populated="true" UUID="f42daaf3-dc7d-4160-8b97-ee3e53cafc4a" fk-column-ref="COL15" name="Column Mapping" physicalName="Column Mapping" pk-column-ref="COL2" />
   </relationship>
   <relationship id="REL58" populated="true" UUID="4df93500-0fa1-4244-b1a0-ad8db2cf57d4" deferrability="7" deleteRule="3" fk-table-ref="TAB23" fkCardinality="7" identifying="true" name="funcionario_trabalha_em_fk" physicalName="funcionario_trabalha_em_fk" pk-table-ref="TAB1" pkCardinality="2" updateRule="3" >
    <column-mapping id="CMP59" populated="true" UUID="0093590a-697f-44c2-91ac-0174496c3f32" fk-column-ref="COL24" name="Column Mapping" physicalName="Column Mapping" pk-column-ref="COL2" />
   </relationship>
   <relationship id="REL60" populated="true" UUID="b4fc0f26-1c80-45fa-bffa-1d63fda3bdfa" deferrability="7" deleteRule="3" fk-table-ref="TAB39" fkCardinality="7" identifying="false" name="funcionario_departamento_fk" physicalName="funcionario_departamento_fk" pk-table-ref="TAB1" pkCardinality="2" updateRule="3" >
    <column-mapping id="CMP61" populated="true" UUID="16a8f276-0cce-4139-9a2f-39061086d38a" fk-column-ref="COL42" name="Column Mapping" physicalName="Column Mapping" pk-column-ref="COL2" />
   </relationship>
   <relationship id="REL62" populated="true" UUID="73826b72-8670-48dd-9d6f-60e5c294e641" deferrability="7" deleteRule="3" fk-table-ref="TAB23" fkCardinality="7" identifying="true" name="projeto_trabalha_em_fk" physicalName="projeto_trabalha_em_fk" pk-table-ref="TAB30" pkCardinality="2" updateRule="3" >
    <column-mapping id="CMP63" populated="true" UUID="820a43d1-8959-4749-8558-b7be2676038d" fk-column-ref="COL25" name="Column Mapping" physicalName="Column Mapping" pk-column-ref="COL31" />
   </relationship>
   <relationship id="REL64" populated="true" UUID="844cb70a-2aff-4884-a531-6571f9e79950" deferrability="7" deleteRule="3" fk-table-ref="TAB30" fkCardinality="7" identifying="false" name="departamento_projeto_fk" physicalName="departamento_projeto_fk" pk-table-ref="TAB39" pkCardinality="2" updateRule="3" >
    <column-mapping id="CMP65" populated="true" UUID="fd045c6f-2f2f-42e9-838a-f09fe6ffd376" fk-column-ref="COL34" name="Column Mapping" physicalName="Column Mapping" pk-column-ref="COL40" />
   </relationship>
   <relationship id="REL66" populated="true" UUID="ad39715e-9b8c-4958-bf70-a4ad454eb987" deferrability="7" deleteRule="3" fk-table-ref="TAB48" fkCardinality="7" identifying="true" name="departamento_localizacoes_departamento_fk" physicalName="departamento_localizacoes_departamento_fk" pk-table-ref="TAB39" pkCardinality="2" updateRule="3" >
    <column-mapping id="CMP67" populated="true" UUID="11d3606f-1997-4a0a-a8f2-a3fdc639b3ae" fk-column-ref="COL49" name="Column Mapping" physicalName="Column Mapping" pk-column-ref="COL40" />
   </relationship>
  </relationships>
 </target-database>
 <ddl-generator type="ca.sqlpower.architect.ddl.PostgresDDLGenerator" allow-connection="false" target-schema="public"> </ddl-generator>
 <liquibase-settings useSeparateChangeSets="false" generateId="false" idStart="1"/>
 <create-kettle-job-settings filePath="" jobName="" schemaName="" kettleJoinType="0" savingToFile="true" />
 <play-pen zoom="1.414213562373095" viewportX="0" viewportY="0" relationship-style="rectilinear" names-displayLogicalNames="true" showPrimaryTag="true" showForeignTag="true" showAlternateTag="true" columnVisibility="ALL" relationshipLabelVisibility="true">
  <table-pane table-ref="TAB1" x="234" y="130" bgColor="0xbfd6ff" fgColor="0x000000" rounded="false" dashed="false"/>
  <table-pane table-ref="TAB14" x="219" y="582" bgColor="0xbfd6ff" fgColor="0x000000" rounded="false" dashed="false"/>
  <table-pane table-ref="TAB23" x="708" y="510" bgColor="0xfbdabb" fgColor="0x000000" rounded="false" dashed="false"/>
  <table-pane table-ref="TAB30" x="760" y="305" bgColor="0xfbdabb" fgColor="0x000000" rounded="false" dashed="false"/>
  <table-pane table-ref="TAB39" x="758" y="148" bgColor="0xe8cfdb" fgColor="0x000000" rounded="false" dashed="false"/>
  <table-pane table-ref="TAB48" x="765" y="22" bgColor="0xe8cfdb" fgColor="0x000000" rounded="false" dashed="false"/>
  <table-link relationship-ref="REL54" pkConnection="0.13846153846153847" fkConnection="0.8739837398373984" rLineColor="0x2e3436" pkLabelText="" fkLabelText="" orientation="36"/>
  <table-link relationship-ref="REL56" pkConnection="0.3415384615384615" fkConnection="0.4920212765957447" rLineColor="0x2e3436" pkLabelText="" fkLabelText="" orientation="132"/>
  <table-link relationship-ref="REL58" pkConnection="0.9390243902439024" fkConnection="0.3838383838383838" rLineColor="0x2e3436" pkLabelText="" fkLabelText="" orientation="33"/>
  <table-link relationship-ref="REL62" pkConnection="0.4553846153846154" fkConnection="0.5345345345345346" rLineColor="0x2e3436" pkLabelText="" fkLabelText="" orientation="132"/>
  <table-link relationship-ref="REL64" pkConnection="0.1810810810810811" fkConnection="0.5" rLineColor="0x2e3436" pkLabelText="" fkLabelText="" orientation="132"/>
  <table-link relationship-ref="REL60" pkConnection="0.17886178861788618" fkConnection="0.5815602836879432" rLineColor="0x2e3436" pkLabelText="" fkLabelText="" orientation="33"/>
  <table-link relationship-ref="REL66" pkConnection="0.4243243243243243" fkConnection="0.49076517150395776" rLineColor="0x2e3436" pkLabelText="" fkLabelText="" orientation="72"/>
 </play-pen>
 <critic-manager>
  <critic-grouping platformType="Generic" enabled="true">
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.PrimaryKeyCritic" severity="ERROR"/>
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.RelationshipMappingTypeCritic" severity="ERROR"/>
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.EmptyRelationshipCritic" severity="ERROR"/>
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.AlphaNumericNameCritic" severity="ERROR"/>
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.AlphaNumericSequenceNameCritic" severity="ERROR"/>
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.SetDefaultOnColumnWithNoDefaultCritic" severity="ERROR"/>
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.SetNullOnNonNullableColumnCritic" severity="ERROR"/>
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.DuplicateNameCritic" severity="ERROR"/>
  </critic-grouping>
  <critic-grouping platformType="DB2" enabled="true">
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.DB2UnsupportedFeaturesCritic" severity="ERROR"/>
  </critic-grouping>
  <critic-grouping platformType="H2" enabled="true">
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.H2UnsupportedFeaturesCritic" severity="ERROR"/>
  </critic-grouping>
  <critic-grouping platformType="HSQLDB" enabled="true">
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.HSQLDBUnsupportedFeaturesCritic" severity="ERROR"/>
  </critic-grouping>
  <critic-grouping platformType="MySQL" enabled="true">
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.MySQLCommentCritic" severity="ERROR"/>
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.MySQLReservedWordsCritic" severity="ERROR"/>
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.MySQLUnsupportedFeaturesCritic" severity="ERROR"/>
  </critic-grouping>
  <critic-grouping platformType="Oracle" enabled="true">
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.OraclePhysicalNameCritic" severity="ERROR"/>
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.OracleReservedWordsCritic" severity="ERROR"/>
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.OracleUnsupportedFeaturesCritic" severity="ERROR"/>
  </critic-grouping>
  <critic-grouping platformType="PostgreSQL" enabled="true">
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.PostgreSQLReservedWordsCritic" severity="ERROR"/>
  </critic-grouping>
  <critic-grouping platformType="SQL Server" enabled="true">
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.SQLServerUnsupportedFeaturesCritic" severity="ERROR"/>
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.SQLServerReservedWordsCritic" severity="ERROR"/>
  </critic-grouping>
  <critic-grouping platformType="SQL Server 2000" enabled="true">
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.SQLServer2000UnsupportedFeaturesCritic" severity="ERROR"/>
  </critic-grouping>
  <critic-grouping platformType="SQL Server 2005" enabled="true">
   <critic-settings class="ca.sqlpower.architect.ddl.critic.impl.SQLServer2005UnsupportedFeaturesCritic" severity="ERROR"/>
  </critic-grouping>
 </critic-manager>
 <profiles topNCount="10">
  </profiles>
  <olap>
  </olap>
  <olap-gui>
  </olap-gui>
</architect-project>
