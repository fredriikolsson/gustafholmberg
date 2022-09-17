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
      colors: {
        primary: 'var(--primary)'
      },
      backgroundImage: {
        'first-image': "linear-gradient(rgba(234, 239, 240, 0.25), rgba(234, 239, 240, 0.25)), url('/first.jpg')",
        'second-image': "linear-gradient(rgba(234, 239, 240, 0.25), rgba(234, 239, 240, 0.25)), url('/second.jpg')",
        'about-image': "linear-gradient(rgba(234, 239, 240, 0.25), rgba(234, 239, 240, 0.25)), url('/walking_in_nature.jpg')",
      },
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
