extends Node2D

#foram excluidas variaveis: letra maiusculas e numeros
var numero = 0
var lista = []
var nome
var i = 0

#adicionado conexao nos botoes com o 2d
func _on_Button_pressed():
	#transformando dados em string e inteiro
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text)
	nome = str($LineEdit2.text)


func _on_Button2_pressed():
	#Incrementando 45 ao número inserido pelo usuário
	for i in range(10):
		numero+=i
		lista.append(numero)
		$Label.text = str(numero)




func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	#pop_back() - elimina os itens da lista
	while(len(lista)):
		var cont=0
		if(lista[i]%2==1):
			cont+=1
		if(cont!=0):
			nome = nome + "baldo"
		$Label2.text = nome
		lista.pop_back()

