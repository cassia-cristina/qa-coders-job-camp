
*** Variables ***

&{trabalheConosco}
...     btnAccept=//*[contains(text(), "Aceitar")]
...     btnCadastrarCurriculo=//a[text() = 'CADASTRE SEU CURRÍCULO']
...     nome=css:input[id='name']
...     cargo=css:input[id='headline']
...     salario=css:input[id='salary']
...     email=css:input[id='email']
...     telefone=css:input[id='phone-0']
...     slcPais=css:select[id='country']
...     estado=css:input[id='region']
...     cidade=css:input[id='city']
...     bairro=css:input[id='neighborhood']
...     endereco=css:input[id='address']
...     cep=css:input[id='zipcode']
...     resumo=css:textarea[id='summary']
...     btnAddRedesSociais=//button[text()='+ Adicionar página']
...     linkedin=css:input[data-v-fc8bd020]
...     curriculo=css:input[id='validatedCustomFile']
...     consent=css:input[id='consent']
...     btnFinalizar=css:button[type='submit']
...     sucesso=//*[text()='com sucesso']

&{preencheCampos}
...     nome=Cassia Cristina Santos de Souza
...     cargo=Analista de testes Pleno
...     salario=8.000,00
...     email=cassia.cristina.go@gmail.com
...     telefone=62992138032
...     slcPais=BR
...     estado=GO
...     cidade=Aparecida de Goiânia
...     bairro=Setor Serra Dourada 3
...     endereco=Av das Nacoes Qd 56 Lt 6
...     cep=74973450
...     resumo=curriculo enviado com Robot FrameWork, projeto Qa.Coders
...     linkedin=https://www.linkedin.com/in/cassia-cristina-souza
...     sucesso=sucesso