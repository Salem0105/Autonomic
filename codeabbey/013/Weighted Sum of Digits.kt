import java.io.File

fun readFile(): List<String> {
    val fileName = "MY_FILE.lst"
    val fileLines: List<String> = File(fileName).readLines()
    return fileLines
}

fun prepareResult(fileLines: List<String>): String {
    val separatedList = fileLines[1].split(" ")
    val numberList = separatedList.map {
        it.map { digit -> digit.toString().toInt() }
    }
    val multipliedNumberList = numberList.map {
        it.mapIndexed { index, value -> value * (index + 1) }
    }
    val sumNumberList = multipliedNumberList.map { it.sum().toString() }
    val result = sumNumberList.joinToString(separator = " ")
    return result
}

fun main() {
    println(prepareResult(readFile()))
}
