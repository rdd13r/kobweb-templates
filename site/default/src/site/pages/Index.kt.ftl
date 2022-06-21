package ${package}.pages

import androidx.compose.runtime.*
import com.varabyte.kobweb.core.Page
import ${package}.components.layouts.PageLayout
import org.jetbrains.compose.web.attributes.InputType
import org.jetbrains.compose.web.dom.Input
import org.jetbrains.compose.web.dom.P
import org.jetbrains.compose.web.dom.Text

@Page
@Composable
fun HomePage() {
    PageLayout("Welcome to Kobweb!") {
        Text("Please enter your name")
        var name by remember { mutableStateOf("") }
        Input(
            InputType.Text,
            attrs = {
                onInput { e -> name = e.value }
            }
        )
        P()
        Text("Hello ${r'${name.takeIf { it.isNotBlank() }'} ?: "World"}!")
    }
}