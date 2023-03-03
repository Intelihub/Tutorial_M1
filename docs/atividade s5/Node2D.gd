extends Node2D

#Foram deletadas as variáveis "teste" e "valor".
#Acento retirado na variável "número".
var numero
#Adicionada "var" na frente da lista.
var lista = [] 
#Criada a variável "nome".
var nome
#Criação da variável "cont".
var cont = 0
#Criação da variável "i".
var i = 0

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	#Adicionado o "$".
	numero = int($LineEdit.text)
	#Inversão da variável "nome".
	nome = str($LineEdit2.text)


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		#Variável "numero" estava com a letra "N" maiúscula.
		numero += i
		#Variável "numero" estava com a letra "N" maiúscula.
		lista.append(numero)
		#String adicionada na variável "número".
	$Label.text = str(lista)


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	while(len(lista) != i):
		if(lista[i]%2 == 1):
			cont += 1
			i += 1
		if(cont!=0):
			i += 1
			print(cont)
			$Label2.text = str(nome) + " Baldo"
#			lista.pop_back()
		#Função específica para evitar loop desse programa no Godot.

