Приложение разработано в качестве тестового задания для Елены Леонидовны Ж.

Приложение разработано на основе визуализации, предоставленной с сайта figma.com

Тестовое задание заключалось в разработке визуализации приложения, без подключения у нему нейронных сетей. 

В приложении созданы все заданные в техническом задании экраны, дополнительно была предусмотрена поддержка темной темы:

![IMG_6325](https://github.com/AntonR8/PetBooth/assets/129757394/0f63d23c-ea67-490c-9366-087ec1b472e9)
![IMG_6326](https://github.com/AntonR8/PetBooth/assets/129757394/4f6098c0-6938-4146-94d3-1919534d5037)

В приложении реализован вход с помощью функции @ign in with Apple
![IMG_6327](https://github.com/AntonR8/PetBooth/assets/129757394/4891ddd8-7a23-4504-a1f1-a13a9e9db514)

После авторизации приложение сохраняет данные пользователя(Имейл, имя, фамилию). Без авторизации приложение не позволяет открывать экраны с созданием обработки фотографий.

При задании параметров питомца реализована защита от невведения данных имени и цвета животного:
![IMG_6328](https://github.com/AntonR8/PetBooth/assets/129757394/4d1a5da6-a243-4312-8cb8-7c60ec03e6a4)
![IMG_6329](https://github.com/AntonR8/PetBooth/assets/129757394/f8526e2b-e8d9-42bc-9cab-da57a3bcfe55)

В задании во вкладке "my albumms" нет кноки добавить альбом, поэтому в приложении не прописан сценарий добавления второго альбома, однако в самой вкладке отображения "my albumms" заложено отображение нескольких альбомов.

.....................

Приложение построено на основе архитектуры MVVM. Так как выполнение тестового задания не предполгало реализацию backend раздел ViewModel разделен на две модели: 
1. данные которые изначально содержаться в приложении
2. загружаемые данные, в данном случае это только данные входа

Предположительно реализация функционала приложения потребует применение Combine и FileManager и структура ViewModel полностью измениться.

.....................

В приложении не реализована функция из задания Sign in with Google (к сожалению firebase у не изучен - как раз следующий на очереди, втупую копировать код я не стал).

