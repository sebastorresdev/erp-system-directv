using FluentValidation;

namespace ErpSystemDirectv.Application.Users.Commands.CreateUser;

public class CreateUserCommandValidator : AbstractValidator<CreateUserCommand>
{
    // Agregar mas validaciones segun los requerimientos
    public CreateUserCommandValidator()
    {
        RuleFor(x => x.Username)
            .NotEmpty().WithMessage("Nombre de usuario es obligatorio.")
            .MinimumLength(6).WithMessage("Nombre de usuario debe tener al menos 6 caracteres.")
            .MaximumLength(50).WithMessage("Nombre de usuario no debe exceder los 50 caracteres.");

        RuleFor(x => x.Email)
            .NotEmpty().WithMessage("Email es obligatorio.")
            .EmailAddress().WithMessage("Email no es valido.");
        
        RuleFor(x => x.Password)
            .NotEmpty().WithMessage("La contraseña es requerida.")
            .MinimumLength(6).WithMessage("La contraseña debe tener al menos 6 caracteres.");
    }
}