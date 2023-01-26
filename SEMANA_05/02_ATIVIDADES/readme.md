#Exercício da semana 5

O código abaixo possui vários erros, utilize o mesmo dentro da sua tela interativa, a primeira tela criada no Godot. Corrija os erros e comente as partes que estão erradas.
```
extends Node2D

var teste = false
var valor = 0
var número = 0
lista = []

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	número = int(LineEdit.text)
	$LineEdit.text = nome


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		Numero+=i
		lista.append(Numero)
	$Label.text = numero


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	while(len(lista)):
		cont=0
		i=0
		if(lista[i]%2==1):
			cont+=1
		if(cont!=0):
			nome = nome+"baldo"
		$Label2.text = nome
```
