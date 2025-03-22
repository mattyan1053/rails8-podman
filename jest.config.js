module.exports = {
  preset: 'ts-jest',
  testEnvironment: 'jsdom',
  moduleNameMapper: {
    '^@/(.*)$': '<rootDir>/app/javascript/$1',
  },
  transform: {
    '^.+\\.ts?$': 'ts-jest',
  },
};
