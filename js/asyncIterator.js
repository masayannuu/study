function delay() {
  return new Promise(resolve => setTimeout(resolve, 300))
}

async function delayLog(item) {
  await delay()
  console.log(item)
}

async function processArray(array) {
  array.forEach(async (item) => {
    await delayLog(item)
  })
  console.log('Done!')
}

async function processArrayMap(array) {
  const promises = array.map(delayLog)
  await Promise.all(promises)
  console.log('Done!')
}

const array = [1, 2, 3]

//Not Work!
// processArray(array)

//Work!
processArrayMap(array)