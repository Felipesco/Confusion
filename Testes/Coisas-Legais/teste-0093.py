# Felipe Santos :)
# Teste para download de videos do youtube - teste de youtube 018
# Antes de tudo, tem que ter o pytube instaldo... pip install pytube ...(se não me engano é assim)

from pytube import YouTube

link = input("Coloque o Link: ")
video = YouTube(link)
stream = video.streams.get_highest_resolution()
stream.download()

# Só queria falar que funcionou!!