### 1 Globals
__dirname                     // Dir
__filename                    // File
process.env                   // Process Env
process.argv                  // Process Argv
process.exit()                // Process Exit
console.log()                 // Console Log
console.error()               // Console Error

### 2 Modules (CommonJS)
const fs = require('fs');     // Import
module.exports = { func };    // Export
const myMod = require('./myMod'); // Local

### 3 File System (fs)
fs.readFileSync('file.txt', 'utf8'); // Read
fs.writeFileSync('file.txt', 'data'); // Write
fs.readFile('file.txt', (err, data) => ...) // Async Read
const fs = require('fs').promises; await fs.readFile(...) // Promises

### 4 Path Module
path.join(__dirname, 'public') // Join
path.resolve('file.txt')      // Resolve
path.extname('file.txt')      // Ext
path.parse('/path/to/file.txt') // Parse

### 5 HTTP Server
http.createServer((req, res) => ...) // Create
server.listen(3000);          // Listen
res.writeHead(200, { 'Content-Type': 'text/plain' }); // Headers
res.end('Hello');             // End

### 6 Events
const EventEmitter = require('events'); // Import
const myEmitter = new EventEmitter(); // Init
myEmitter.on('event', () => ...) // Listen
myEmitter.emit('event');      // Emit

### 7 Streams
fs.createReadStream('file.txt') // Read
fs.createWriteStream('dest.txt') // Write
readStream.pipe(writeStream)  // Pipe

### 8 NPM
npm init -y                   // Init
npm install package           // Install
npm install -D nodemon        // Dev
npm run start                 // Run
npm uninstall package         // Uninstall

### 9 OS Module
const os = require('os');     // Import
os.cpus()                     // CPU
os.totalmem()                 // Mem Total
os.freemem()                  // Mem Free
os.platform()                 // Platform

### 10 Buffer
Buffer.from("Hello")          // Create
Buffer.alloc(10)              // Alloc
buf.toString()                // String
Buffer.concat([b1, b2])       // Concat

### 11 Child Process
exec('ls', (err, stdout) => ...) // Exec
spawn('ls', ['-la'])          // Spawn
fork('script.js')             // Fork

### 12 Crypto
crypto.createHash('sha256').update(data).digest('hex') // Hash
crypto.randomBytes(16).toString('hex') // Random

### 13 URL Module
new URL('https://example.com') // Parse
url.searchParams.get('q')     // Params

### 14 Util Module
util.promisify(fs.readFile)   // Promisify
util.format('%s:%s', 'foo', 'bar') // Format

### 15 Express (Basic)
const app = express();        // App
app.get('/', (req, res) => res.send('Hi')); // Get
app.listen(3000);             // Listen
app.use(express.json());      // Middleware

### 16 Debugging
node --inspect index.js       // Inspect
console.time()                // Console Time
console.timeEnd()             // Console TimeEnd