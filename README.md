# LanguageBuddy

Um app Flutter para **aprendizado de idiomas**, que guia o usuário desde a splash nativa até uma tela de boas-vindas, passando por uma splash animada e um onboarding interativo.

---

## 📚 Funcionalidades implementadas

1. **Splash Screen Nativa**
   - Configurada via `flutter_native_splash`
   - Fundo branco e logo centralizado

2. **Splash Animada em Flutter**
   - Logo gira 360°
   - Fade-in da opacidade da logo
   - Duração de 3 s antes de navegar ao onboarding

3. **Onboarding interativo**
   - Sequência de 3 telas em `PageView`
   - Transição personalizada (escala + opacidade) entre páginas
   - Ícones do Flutter:
     - `Icons.language` → “Descubra e estude novos idiomas com flashcards”
     - `Icons.question_answer` → “Faça quizzes interativos para reforçar seu vocabulário”
     - `Icons.record_voice_over` → “Pratique sua pronúncia com feedback em tempo real”
   - Indicador de página dinâmico
   - Botão “Próximo” para avançar e “Começar” na última página

4. **Welcome Screen**
   - Ícone de celebração (`Icons.celebration`) e mensagem de boas-vindas
   - Animação de fade-in em 2 s

---

## 🛠 Tecnologias Utilizadas

- **Flutter SDK** (>= 3.7.2)  
- **Dart**  
- **flutter_native_splash**: gera splash screen nativa para Android, iOS, Web e Desktop  
- **AnimatedBuilder, Transform, FadeTransition**: para animações Flutter  
- **PageView** e **AnimatedBuilder**: transições personalizadas no onboarding  
- **Material Design 3**: componentes e estilo visual  
- **Icons** nativos do Flutter (no lugar de assets pesados)  
- **flutter_lints**: recomendações de boas práticas de código  

---

## 📁 Estrutura do repositório

```
lib/
├─ main.dart # Ponto de entrada: carrega SplashScreen
├─ screens/
    ├─ splash/
        └─ splash_screen.dart # Splash animada Flutter
    ├─ onboarding/
        └─ onboarding_screen.dart # Onboarding com PageView
    └─ welcome/
        └─ welcome_screen.dart # Tela de boas-vindas
└─ widgets/ # (widgets reutilizáveis, se houver)
assets/
    └─ images/
        └─ logo.png # Logo para splash nativa & Flutter
```

---

## 🚀 Como executar

1. **Clone este repositório**
2. **Adicione sua logo** em `assets/images/logo.png`
3. **Verifique o `pubspec.yaml`** (trechos-chave já configurados):

   ```yaml
   dev_dependencies:
     flutter_native_splash: ^2.3.0

   flutter_native_splash:
     color: "#ffffff"
     image: assets/images/logo.png
     android: true
     ios: true
     web: true
     windows: true
     fullscreen: true

   flutter:
     uses-material-design: true
     assets:
       - assets/images/logo.png

4. **No terminal, na raiz do projeto, rode:**

```
flutter pub get
flutter pub run flutter_native_splash:create
flutter run
```

## Demonstração
<img src="screenshots/demo.gif" alt="Demonstração da Lista Expansível" width="300">

