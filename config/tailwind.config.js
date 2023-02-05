const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        primary: "rgb(48 86 211)",
        warning: "rgb(249 193 7)"
      },
      animation: {
        "fade-out": "fade 10s linear 1 normal forwards"
      },
      keyframes: {
        fade: {
          '0%': { opacity: 1 },
          '100%': {opacity: 0}
        }
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
